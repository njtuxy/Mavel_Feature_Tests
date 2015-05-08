# require 'calabash-cucumber'
# @step_count = 0
# @@screenshot_names = []

# Delete all existing files in test report folder
# empty_test_report_folder

launch_the_game

delete_everything_in_testreport_folder

at_exit do
  exit_the_game

  if TAKE_SCREENSHOT
    Screenshot::finish_generating_screenshots
  end

end

Before do |scenario|

end

After do |scenario|  
  # move_screen_shots_to_test_report_folder(Dir.pwd)  
  # restart_the_game
  #quite cucumber when a scenario fails, skip all the following scenarios.
  if scenario.failed?

  end

  Cucumber.wants_to_quit = true if scenario.failed?

end



#Capture screenshot for each test steps
AfterStep do |scenario|
  if TAKE_SCREENSHOT
    Screenshot::take_screenshot_for_step(scenario)
  end
end


