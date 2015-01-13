# @step_count = 0
@@screenshot_names = []

# Delete all existing files in test report folder
# empty_test_report_folder

launch_the_game

at_exit do
  exit_the_game
  @@screenshot_names.each_with_index do |screenshot_name, index|     
     update_screen_shot_name(screenshot_name, index)     
  end
  resize_screenshots_in_test_report_folder
end

Before do |scenario|
end

After do |scenario|  
  # move_screen_shots_to_test_report_folder(Dir.pwd)  
end



#Capture screenshot for each test steps
AfterStep do |scenario|
   @step_count ||= 0
   current_feature = if scenario.respond_to?('scenario_outline')
                     # execute the following code only for scenarios outline (starting from the second example)
                       scenario.scenario_outline.feature
                     else
                     # execute the following code only for a scenario and a scenario outline (the first example only)                     
                       scenario.feature
                     end
   # call method 'steps' and select the current step
   # we use .send because the method 'steps' is private for scenario outline
   step_title = current_feature.feature_elements[0].send(:steps).to_a[@step_count].name
   screenshot_name =  (scenario.name + "_" + step_title).gsub(" ", "_")

   # p "DEBUG ==============>"
   # p screenshot_name
   # p "the array is: " + @@screenshot_names
   # p "DEBUG ==============>"
   save_screen_shots_for_step(screenshot_name)
   # increase step counter
   @step_count += 1
   @@screenshot_names<<screenshot_name
end


