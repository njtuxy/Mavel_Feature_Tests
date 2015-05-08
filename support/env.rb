require 'mechanize'
require 'calabash-cucumber/cucumber'
require 'securerandom'
#require "active_support/all"
#require 'redis'
require "google_drive"

DEVICE = YAML.load_file("features/support/ios_devices.yml")

# test_helpers = File.expand_path(File.dirname(__FILE__)+"/test_helpers/*.rb")
# Dir.glob(test_helpers).each {|file| require file }

#test fundamental method configurations
TOUCH_SCREEN_DEFAULT_WAIT_TIME=1

#Redis configurations
# PLAYER_NAME = "player_name"

#Test Device Configuration
#TARGET_DEVICE = "ipad_mini_retina"
# TARGET_DEVICE = "ipad_3"
#TARGET_DEVICE  = "ipad_2"
SOCKET_SERVER = '127.0.0.1'
SOCKET_PORT=9921
IS_BUILD_MACHINE=false
TAKE_SCREENSHOT=true
TAKE_SCREENSHOT_ONLY_FOR_FAILED_SCENARIO=false

if IS_BUILD_MACHINE
  p "xxxx"
  VERSION_NUMBER=`cat $Version_File`.strip
end




