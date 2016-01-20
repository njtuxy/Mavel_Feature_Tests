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

    if TAKE_SCREENSHOT_ONLY_FOR_FAILED_SCENARIO
      Screenshot::take_screenshot_for_step(scenario)
    end

    #Embed all screen shots into html report:
    # Screenshot::screenshot_names.each do |screenshot_name|
    #   save_screen_shots_for_step(screenshot_name)
    # end
    save_screen_shots_for_step(Screenshot::screenshot_names.last.gsub("_", ""))
    Cucumber.wants_to_quit = true
  end

  # Cucumber.wants_to_quit = true if scenario.failed?

end



#Capture screenshot for each test step
AfterStep do |scenario|
  if !TAKE_SCREENSHOT_ONLY_FOR_FAILED_SCENARIO
    Screenshot::take_screenshot_for_step(scenario)
    if Screenshot::screenshot_names.length > 1
      save_screen_shots_for_step(Screenshot::screenshot_names[-2].gsub("_", ""))
    end
  end


end


