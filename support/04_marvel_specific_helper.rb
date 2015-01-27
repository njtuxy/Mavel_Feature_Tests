def get_visibility_of_fte_confirmation_prompt_window()
  request = {"command"=>"get_tutorial_prompt_window_visibility_status"}
  send_request_and_get_response(request)["visible"]
end

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

