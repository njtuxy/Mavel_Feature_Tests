class Screenshot
  # include Calabash::Cucumber::Operations
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
    screenshot_name =  (scenario.name + "_" + @step_count.to_s.rjust(2, '0') + "_" + step_title).gsub(" ", "_")
    save_screen_shots_for_step(screenshot_name)
    # increase step counter
    @step_count += 1
    @@screenshot_names<<screenshot_name
  end

  def self.finish_generating_screenshots
    log "going to update screenshots' name"
    @@screenshot_names.each_with_index do |screenshot_name, index|
      update_screen_shot_name(screenshot_name, index)
    end
    log "going to update screenshots sizes"
    resize_screenshots_in_test_report_folder
  end

  def self.resize_screenshots_in_test_report_folder
    # $screen_shots.each do |screen_shot|
    Dir.chdir "/Users/sfqatest/Kabam/Marvel/testReport"
    `sips -Z 640 *.png`
    `sips -r -90 *.png`
    # FileUtils.mv(*.png, "/Users/sfqatest/Kabam/Marvel/testReport/")
    # FileUtils.mv(*.png, "/Users/sfqatest/Kabam/Marvel/testReport/")
    # end
  end


  def self.update_screen_shot_name(name, index)
    # p "DEBUG =====>"
    # p "#{name}#{(index+1).to_s}.png"
    # p index
    # p Dir.glob("#{name}#{(index+1).to_s}.png")[0]
    # p name+"_"+index.to_s+".png"
    # p "DEBUG =====>"
    screenshot_file = name+"_"+index.to_s+".png"
    File.rename(Dir.glob("#{name}#{(index+1).to_s}.png")[0], screenshot_file)
    FileUtils.mv(screenshot_file, "/Users/sfqatest/Kabam/Marvel/testReport")
    # FileUtils.mv(Dir.glob("#{name}#{(index+1).to_s}.png")[0], name+"_"+index.to_s+".png")
  end


  def self.save_screen_shots_for_step(screenshot_name)
    log("going to take screenshot")
    uia_screenshot(screenshot_name)
    log("going to finish screenshot")
    screenshot_embed({:prefix => "/Users/sfqatest/Kabam/Marvel/testReport/", :name=> "#{screenshot_name}.png", :label=> "screenshot"})
  end

  #Why define a dummy cucumber method here: https://groups.google.com/forum/#!msg/calabash-ios/RI_JfFsrwtY/VimcFgvIJ9sJ
  # And https://github.com/calabash/calabash-ios/issues/246
  def self.embed(x,y=nil,z=nil)
  end

end