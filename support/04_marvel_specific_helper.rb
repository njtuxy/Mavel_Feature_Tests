def get_visibility_of_fte_confirmation_prompt_window()
  request = {"command"=>"get_tutorial_prompt_window_visibility_status"}
  send_request_and_get_response(request)["visible"]
end

def wait_until_I_see_the_fte_confirmation_prompt_window_on_screen()
  visibility = get_visibility_of_fte_confirmation_prompt_window
  until visibility == true
    sleep 0.5
    visibility = get_visibility_of_fte_confirmation_prompt_window
  end
end

def get_visibility_of_left_anchor_text()
  request = {"command"=>"get_tutorial_gameplay_overlay_left_anchor_visibility_status"}
  send_request_and_get_response(request)["visible"]
end

def get_visibility_of_right_anchor_text()
  request = {"command"=>"get_tutorial_gameplay_overlay_right_anchor_visibility_status"}
  send_request_and_get_response(request)["visible"]
end

def wait_until_I_see_the_left_anchor_text_on_screen()
  visibility = get_visibility_of_left_anchor_text
  until visibility == true
    sleep 0.5
    visibility = get_visibility_of_left_anchor_text
  end
end

def wait_until_I_see_the_right_anchor_text_on_screen()
  visibility = get_visibility_of_right_anchor_text
  until visibility == true
    sleep 0.5
    visibility = get_visibility_of_right_anchor_text
  end
end

def get_item_from_items_store(index)
  get_one_object_from_the_same_name_objects_by_index("StoreItem(Clone)", index)
end

def get_get_now_buttons_from_items_store(index)
  get_one_object_from_the_same_name_objects_by_index("BuyButton", index)
end

def touch_items_store_get_now_button_by_index(button_index)
  button = get_get_now_buttons_from_items_store(button_index)
  x = button["x"].to_i
  y = button["y"].to_i
  case TARGET_DEVICE
    when "ipad_3"
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