require 'socket'
require 'json'
require 'timeout'
require 'calabash-cucumber/core'
require 'calabash-cucumber/tests_helpers'
require 'calabash-cucumber/keyboard_helpers'
require 'calabash-cucumber/wait_helpers'
# require 'calabash-cucumber/operations'
require 'calabash-cucumber/version'
#require 'calabash-cucumber/location'
require 'calabash-cucumber/ibase'
require 'calabash-cucumber/uia'
include Calabash::Cucumber::Core
include Calabash::Cucumber::WaitHelpers
include Calabash::Cucumber::TestsHelpers
# include Calabash::Cucumber::Operations
include Calabash::Cucumber::UIA

def send_json_request_to_socket(request)
  s = TCPSocket.open(SOCKET_SERVER, SOCKET_PORT)
  # need a dummy request before any request, because the first request always get empty back, need to fix it later from SocketServer side.
  s.gets
  s.puts(request.to_json)
  s.flush
  res = s.gets.chomp
  json_res = JSON.parse(res)
  s.close
  json_res
end

def is_socket_ready_to_connect?
  socket = TCPSocket.open(SOCKET_SERVER, SOCKET_PORT)
  socket.puts({"command" => "get_screen"}.to_json)
  socket.flush
  result = socket.gets
  socket.close
  if(result == nil)
    return false
  else
    $time_when_finished_launching_the_game = Time.now
    if IS_BUILD_MACHINE
      store_loading_time_to_google_drive($time_when_finished_launching_the_game, $time_when_start_the_game)
    end
    return true
  end
end

def send_request_and_get_response(request)
  send_json_request_to_socket(request)
end

def get_game_object(object_name)
  request = {"command"=>"get_game_object", "object_name"=>object_name}
  send_request_and_get_response(request)
end

def get_building_object(object_name)
  request = {"command"=>"get_game_object", "object_name"=>object_name, "is_builiding"=>"true"}
  send_request_and_get_response(request)
end

def get_child_object(parent_object_name, child_index)
  request = {"command"=>"get_game_object_child", "object_name"=>parent_object_name, "child_index"=> child_index}
  send_request_and_get_response(request)
end

def get_game_object_x_coordinate_on_screen(object_name)
  get_game_object(object_name)["x"]
end

def get_game_object_y_coordinate_on_screen(object_name)
  get_game_object(object_name)["y"]
end

def get_game_object_text_on_screen(object_name)
  get_game_object(object_name)["text00"]
end

def game_object_includes_text(object_name, text)
  get_game_object(object_name).values.join().include?(text)
end


def wait_for_game_object_present_on_screen(object_name, timeout=30)
  Timeout.timeout(timeout) do
    p "--- wait for game object present on screen ---"
    t1 = Time.now
    while (!is_object_on_screen?(object_name))
      sleep(1.0/10.0)
      p "waiting for #{object_name} ..."
    end
    t2 = Time.now
    p "total time on waiting for #{object_name} to show on screen: " + ('%.1f' % (t2-t1)).to_s
  end
end

def wait_for_game_socket_sever_is_ready
  Timeout.timeout(100) do
    t1 = Time.now
    while (!is_socket_ready_to_connect?)
      sleep(1)
      p "waiting for socket server to start...."
    end
    t2 = Time.now
    p "socket server is connected!"
    # p "total time on waiting for socket sever is ready: " + ('%.1f' % (t2-t1)).to_s
  end
  sleep 5
end

def is_object_on_screen?(object_name)
  get_game_object(object_name)["object_found"] == 'true'
end



def capture_screen_shot(screen_shot_name)
  uia_screenshot(screen_shot_name)
end

def convert_number_string_to_integer(number_string)
  Integer(number_string.gsub(" ", ""))
end

def wait_for_expected_number_shows_on_screen(expected_number)
  current_number = -1
  local_expected_number = expected_number
  Timeout.timeout(15) do
    while(current_number != local_expected_number)
      current_number = yield
      if(current_number.is_a?(String))
        current_number = convert_number_string_to_integer(current_number)
      end
      sleep(1.0/3.0)
      p "waiting for the correct number shows on screen!!"
    end
  end
end

def store_value_to_redis(listName, value)
  sleep 1
  $redis.rpush(listName, value)
end

def left_push_value_to_redis_list(listName, value)
  $redis.lpush(listName, value)
end

def get_first_value_from_redis_list(listName)
  $redis.lindex(listName, 0)
end

def get_integer_value_from_redis(listName)
  Integer($redis.rpop(listName))
end

def get_string_value_from_redis(listName)
  $redis.rpop(listName)
end

def store_hash_to_redis(hash_key_name, hash_field_name, hash_field_value)
  $redis.hset(hash_key_name, hash_field_name, hash_field_value)
end

def get_hash_from_redis(hash_key_name, hash_field_name)
  $redis.hget(hash_key_name, hash_field_name)
end

def get_FPS_value_from_device
  request = {"command"=>"get_FPS"}
  #send_request_and_get_response(request)
  if IS_BUILD_MACHINE
    store_data_to_google_drive(send_request_and_get_response(request)["FPS"])
  end
end

#uia_swipe_offset('{:x 384, :y 200}', '{:direction :left}')

def store_data_to_google_drive(data)
  session = GoogleDrive.login("kabamflagship@gmail.com", "Test123!")
  ws = session.spreadsheet_by_key("1f8_gmyjP7EKGhoz-WLEKTFtLoioBxnHH00krAcEXsFI").worksheets[0]
  data_counter = ws.rows.count
  if data_counter == 0
    new_row_index = 1;
  else
    new_row_index = data_counter.to_i + 1
  end
  ws[new_row_index, 1] = VERSION_NUMBER
  ws[new_row_index, 2] = data
  ws.save()
end

def store_loading_time_to_google_drive(end_time, start_time)
  loading_time = ('%.2f' % (end_time-start_time)).to_s
  session = GoogleDrive.login("kabamflagship@gmail.com", "Test123!")
  ws = session.spreadsheet_by_key("1WOrG-3g5aNreQ8iN99f_9V34-B5b8boRwG0SKvqc8L4").worksheets[0]
  data_counter = ws.rows.count
  if data_counter == 0
    new_row_index = 1;
  else
    new_row_index = data_counter.to_i + 1
  end
  ws[new_row_index, 1] = VERSION_NUMBER
  # ws[new_row_index, 1] = VERSION_NUMBER + " " + Time.now.strftime("%Y-%m-%d %H:%M")
  ws[new_row_index, 2] = loading_time
  ws.save()
end