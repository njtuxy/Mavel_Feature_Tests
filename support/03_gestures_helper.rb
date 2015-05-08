def touch_game_object_on_screen(object_name, wait_time=TOUCH_SCREEN_DEFAULT_WAIT_TIME)
  touch_ios_device(object_name)
  sleep wait_time
end

#why have this method: sometimes the games shows "previous base found" window
#Or beginner sale window, close these windows if they are shown on screen

def touch_game_object_on_screen_if_it_shows_on_screen(object_name)
  #sleep 1
  if (is_object_on_screen?(object_name))
    p "found " + object_name +" and going to touch it!!"
    touch_game_object_on_screen(object_name)
  end
end


def wait_and_touch_ios_device(object_name, options={})
  wait_for_game_object_present_on_screen(object_name)
  options[:wait_before_click] ? (sleep options[:wait_before_click]) : (sleep 0)
  json = get_game_object(object_name)
  touch_x_and_y_via_uia_command(json)
end

def wait_and_touch_building_on_ios_device(object_name, options={})
  wait_for_building_object_present_on_screen(object_name)
  options[:wait_before_click] ? (sleep options[:wait_before_click]) : (sleep 0)
  json = get_building_object(object_name)
  touch_x_and_y_via_uia_tap(json)
end

def touch_ios_device(object_name)
  json = get_game_object(object_name)
  touch_x_and_y_via_uia_tap(json)
end


def touch_ios_device_with_screen_position(x, y)
  x = x/2
  y = (y/2 - 768).abs
  uia_tap_offset("{:x #{x}, :y #{y}}")
end

def calabash_direct_touch(x, y)
  uia_tap_offset("{:x #{x}, :y #{y}}")
end

def double_tap_on_screen(x, y)
  double_tap(nil, :offset => {:x => x, :y => y})
end

def api_click(object_name, sleep_time = 1)
  request = {'command' => 'click_game_object', "object_name" => object_name}
  send_request_and_get_response(request)
  sleep sleep_time
end

def touch_building_on_screen(building_name)
  #p "debug: going to touch the building: " + building_name
  json = get_building_object(building_name)
  touch_x_and_y_via_uia_tap(json)
end

def touch_child_object_on_screen(parent_name, child_index)
  json = get_child_object(parent_name, child_index)
  touch_x_and_y_via_uia_tap(json)
end


def touch_district_node(node_name)
  json = get_building_object(node_name)
  touch_x_and_y_via_uia_tap(json)
end

def input_chinese_text_from_keyboard(text)
  calabash_direct_touch(113, 719)
  keyboard_enter_text(text)
  calabash_direct_touch(409, 704)
  calabash_direct_touch(113, 719)
  done
end

def input_text_from_keyboard(text)
  keyboard_enter_text(text)
  done
end


def touch_ios_button(button_text)
  uia_tap_mark(button_text)
end

private

def touch_x_and_y_via_uia_command(json)
  x = json["x"].to_f
  y = json["y"].to_f
  x = (x/2)/1024
  y = (y/2 - 768).abs/768
  send_uia_command({:command => %Q[target.frontMostApp().mainWindow().elements()[0].tapWithOptions({tapOffset:{x:"#{x}", y:"#{y}"}})]})
end

def touch_x_and_y_via_uia_tap(json)
  x = json["x"].to_i
  y = json["y"].to_i
  x = x/2
  y = (y/2 - 768).abs
  uia_tap_offset("{:x #{x}, :y #{y}}")
end