class Screenshot
  @step_count = 0
  @@screenshot_names = []

  def self.take_screenshot_for_step(scenario)
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
    screenshot_name =  (scenario.name + @step_count.to_s.rjust(3, '0') + step_title).gsub!(/[^0-9A-Za-z]/, '') + "_"
    # save_screen_shots_for_step(screenshot_name)
    # //Take Screen shot
    uia_screenshot(screenshot_name)
    # increase step counter
    @step_count += 1
    @@screenshot_names<<screenshot_name
  end

  def self.finish_generating_screenshots
    @@screenshot_names.each_with_index do |screenshot_name, index|
      update_screen_shot_name(screenshot_name, index)
    end
    resize_screenshots_in_test_report_folder
  end

  def self.resize_screenshots_in_test_report_folder
    Dir.chdir "/Users/sfqatest/Kabam/Marvel/testReport"
    `sips -Z 640 *.png`
    `sips -r -90 *.png`
  end

  def self.update_screen_shot_name(name, index)
    screenshot_file = name+(index+1).to_s+".png"
    # File.rename(Dir.glob("#{name}#{(index).to_s}.png")[0], screenshot_file)
    FileUtils.mv(screenshot_file, "/Users/sfqatest/Kabam/Marvel/testReport")
  end

  def self.screenshot_names
    @@screenshot_names
  end

  #Why define a dummy cucumber method here: https://groups.google.com/forum/#!msg/calabash-ios/RI_JfFsrwtY/VimcFgvIJ9sJ
  # And https://github.com/calabash/calabash-ios/issues/246

end