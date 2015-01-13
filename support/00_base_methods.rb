# uia_screen_shots save screen shots in a temporary folder and will move all of them to current test folder after
# all test are finished - that is why we handle all the screen shots in 'exit' section.
#CALABASH_RESULT_DIR = "/tmp/calabash"
#$socket_port = 9000
#$macos = false
#$ipad_retina = false
#$ipad_regular = false
#$ipad_mini_retina = true

#$screen_shots = Array.new
#TEST_REPORT_DIR = "test_report"
#$connection ||= DD_Stage_Admin_Tool.new("Stage18396")
#Calabash methods


def launch_the_game
  p $time_when_start_the_game = Time.now
  if $calabash_launcher.nil?
    $calabash_launcher = Calabash::Cucumber::Launcher.new
    $calabash_launcher.relaunch
    #$calabash_launcher.relaunch({:results_dir => ""})
    $calabash_launcher.calabash_notify(self)    
  end
end

def exit_the_game
  calabash_exit
  if $calabash_launcher.active?
    $calabash_launcher.stop
  end
  $calabash_launcher=nil
end

def restart_the_game
  end_redis_client
  exit_the_game
  launch_the_game
  start_redis_client
end

#Redis methods
def start_redis_client
  $redis ||= Redis.new
end

def end_redis_client
  $redis.quit
end

#Screenshots Methods:
def save_screen_shots_for_step(screenshot_name)
  uia_screenshot(screenshot_name)
  screenshot_embed({:prefix => "/Users/sfqatest/Kabam/Marvel/testReport/", :name=> "#{screenshot_name}.png", :label=> "screenshot"})
    # p "DEBUG +++++++++++++++++++++++1"
    # p "screenshot_name: " + screenshot_name
    # p "index: " + index.to_s
    # p "expected_screenshot_name: " + expected_screenshot_name
    # p Dir.glob("#{screenshot_name}*.png")
    # p "DEBUG +++++++++++++++++++++++4"
    # while File.exists?(current_screenshot_name) == false
    #       p "DEBUG +++++++++++++++++++++++777777777"
    #       p current_screenshot_name
    #       p Dir.glob('*')
    #       p "DEBUG +++++++++++++++++++++++8888888888"
    #       sleep(3)
    # end

  # FileUtils.mv(Dir.glob("#{screenshot_name}*.png")[0], expected_screenshot_name)
  # FileUtils.mv(expected_screenshot_name, "/Users/sfqatest/Kabam/Marvel/testReport")
  #Do some trick here, because uia_screenshot method has its own index on screenshots, we need to translate it.
  
  
  
  # FileUtils.mv(actual_screenshot_name, "/Users/sfqatest/Kabam/Marvel/testReport/")
  # embed(actual_screenshot_name, "image/png", "screenshot")
  # `sips -Z 640 "#{screen_shot}"`
  # `sips -r 90 "#{screen_shot}"`
end

def save_screen_for_each_step(scenario)
  raw_screen_shot_name = scenario.name.gsub(" ", "_")
  uia_screenshot(raw_screen_shot_name)
  $screen_shot_index+=1
  screenshot = raw_screen_shot_name + "#{($screen_shot_index).to_s}"+".png"
  embed("Click_Home_Button1", "image/png", "SCREENSHOT")
  $screen_shots << screenshot
end

def resize_screenshots_in_test_report_folder
  # $screen_shots.each do |screen_shot|
  Dir.chdir "/Users/sfqatest/Kabam/Marvel/testReport"
  `sips -Z 640 *.png`
  `sips -r -90 *.png`  
  # FileUtils.mv(*.png, "/Users/sfqatest/Kabam/Marvel/testReport/")
  # FileUtils.mv(*.png, "/Users/sfqatest/Kabam/Marvel/testReport/")
  # end
end

def update_screen_shot_name(name, index)
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

# def update_screen_shots_name
#   $screen_shots.each do |screen_shot|
#     FileUtils.mv(Dir.glob("#{screen_shot}*.png")[0], "#{screen_shot}.png")
#     FileUtils.mv("#{screen_shot}.png", TEST_REPORT_DIR)
#   end
# end

# def go_back_to_base_view
#   #if(is_object_on_screen?("BtnExit"))
#   #  touch_game_object_on_screen("BtnExit")
#   #end
#   api_click("BtnExit")
# end


#Test Reports Methods:
# def empty_test_report_folder(test_report_folder)
#   FileUtils.rm_rf(Dir.glob("#{test_report_folder}/*"))
# end