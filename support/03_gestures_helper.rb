def touch_game_object_on_screen(object_name, wait_time=TOUCH_SCREEN_DEFAULT_WAIT_TIME)
  touch_ios_device(object_name)
  sleep wait_time
end

#why have this method: sometimes the games shows "previous base found" window
#Or beginner sale window, close these windows if they are shown on screen

def touch_game_object_on_screen_if_it_shows_on_screen(object_name)
  #sleep 1
  if(is_object_on_screen?(object_name))
    p "found " + object_name +" and going to touch it!!"
    touch_game_object_on_screen(object_name)
  end
end

def touch_ios_device(object_name)
  #p "going to do touch!"
  position = get_game_object(object_name)
  x = position["x"].to_i
  y = position["y"].to_i
  case TARGET_DEVICE
    when "ipad_3"
      #p "debug - touch button on ipad 3 !"
      x = x/2
      y = (y/2 - 768).abs
      #touch(nil, :offset => {:x => x, :y => y})
      uia_tap_offset("{:x #{x}, :y #{y}}")
    when "ipad_2"
      p "touch on ipad 2!"
      #touch(nil, :offset => {:x => (y.to_i), :y => (x.to_i)})
      uia_tap_offset("{:x #{y}, :y #{x}}")
  end
end

def calabash_touch_ios(x,y)
  #uia.tapOffset("{:x #{x}, :y #{y}}")
  #touch(nil, :offset => {:x => x, :y => y})
  uia_tap_offset("{:x #{x}, :y #{y}}")
  p "debug - touch success!"
end

def double_tap_on_screen(x,y)
  #touch(nil, :offset => {:x => x, :y => y})
  double_tap(nil, :offset => {:x => x, :y => y})
  #uia_tap_offset("{:x #{x}, :y #{y}}")
end

def api_click(object_name, sleep_time = 1)
  request = {'command' => 'click_game_object', "object_name"=> object_name}
  send_request_and_get_response(request)
  sleep sleep_time
end

def touch_building_on_screen(building_name)
  #p "debug: going to touch the building: " + building_name
  position = get_building_object(building_name)
  x = position["x"]
  y = position["y"]
  case TARGET_DEVICE
    when "ipad_3"
      #p "debug - touch button on ipad 3 !"
      x = x/2
      y = (768-y/2)
      #touch(nil, :offset => {:x => x, :y => y})
      uia_tap_offset("{:x #{x}, :y #{y}}")
  end
  #touch(nil, :offset => {:x => (y.to_i)/2, :y => (x.to_i)/2}) if (TARGET_DEVICE=="ipad_3")
  #touch(nil, :offset => {:x => (y.to_i), :y => (x.to_i)}) if (TARGET_DEVICE=="ipad_2")
  #api_click(object_name) if($macos)
end

def touch_child_object_on_screen(parent_name, child_index)
  position = get_child_object(parent_name, child_index)
  x = position["x"]
  y = position["y"]

  case TARGET_DEVICE
    when "ipad_3"
      x = x/2
      y = (768-y/2)
      uia_tap_offset("{:x #{x}, :y #{y}}")
  end

end

def touch_district_node(node_name)
  position = get_building_object(node_name)
  x = position["x"].to_i
  y = position["y"].to_i
  case TARGET_DEVICE
    when "ipad_3"
      #p "debug - touch button on ipad 3 !"
      x = x/2
      y = (y/2 - 768).abs
      #touch(nil, :offset => {:x => x, :y => y})
      uia_tap_offset("{:x #{x}, :y #{y}}")
    when "ipad_2"
      p "touch on ipad 2!"
      #touch(nil, :offset => {:x => (y.to_i), :y => (x.to_i)})
      uia_tap_offset("{:x #{y}, :y #{x}}")
  end
end

def input_chinese_text_from_keyboard(text)
  calabash_touch_ios(113, 719)
  keyboard_enter_text(text)
  calabash_touch_ios(409, 704)
  calabash_touch_ios(113, 719)
  done
end

def input_text_from_keyboard(text)
  keyboard_enter_text(text)
  done
end


def touch_ios_button(button_text)
  uia_tap_mark(button_text)
end