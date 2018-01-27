require 'rspec'
require 'appium_lib'
require 'rspec/expectations'
require 'pry'
require 'faker'
require 'yaml'

=begin

 You can also of course use the following way to set your desired capabilities.

caps = { caps: {

    platformName => 'Android',
    deviceName => 'Google_Nexus_5X___7_1_0___API_25___1080x1920',
    orientation => 'PORTRAIT',
    app => './../base.apk',
    appPackage => 'com.thetrainline',
    appActivity => 'com.thetrainline.one_platform.what_is_new.WhatsNewActivity',
    newCommandTimeout: '3000',
    appium_lib: {
      port => 4723
    }
  }
}
=end

case ENV['DEVICE_NAME']
  when 'tablet simulator'
    caps = Appium.load_appium_txt file: File.expand_path("../simulators/tablet/appium.txt", __FILE__), verbose: true
  when 'phone simulator'
    caps = Appium.load_appium_txt file: File.expand_path("../simulators/phone/appium.txt", __FILE__), verbose: true
  else
    caps = Appium.load_appium_txt file: File.expand_path("../simulators/phone/appium.txt", __FILE__), verbose: true
end

case ENV['DEVICE_ORIENTATION']
  when 'portrait'
    caps[:caps].merge!(orientation:"PORTRAIT")
  when 'landscape'
    caps[:caps].merge!(orientation:"LANDSCAPE")
end

class AppiumWorld
end

def set_test_data
  @test_data = YAML.load_file('features/support/test_data.yml')
end

p "============================"
p "Capabilities being used....."
p caps
p "============================"

$driver = Appium::Driver.new(caps, true)

Appium.promote_appium_methods AppiumWorld

World do
  AppiumWorld.new
end