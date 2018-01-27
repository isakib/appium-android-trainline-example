# appium-android-trainline-example

**NOTE**: I am currently looking for a decent iOS app that I could produce another repo for!

## Assumptions...

 1. You are not 100% new to Ruby, Android or Cucumber
 2. You have the necessary Android SDKs, tools in place and installed (i.e. adb)
 3. You are aware of RVM (or similar tools)

## What this is / What's included....

 1. A well put together Appium framwork for testing ANDROID apps.
 2. Follows, generally, good Ruby and general automation practices.
 3. An idea of how a framework can be setup to handle a real world app.
 4. Some basic reporting, profile and device handling.
 5. A good way to see how elements can be located in Appium (I have deliberately used as many types as I could)
 6. A good example to see RSpec expectations in action.
 7. Good use of the Page Object Model
 8. Demonstrable use of the Ruby 'appium_lib'

## What this is not...

1. An all-in-one super duper framework.
2. Something that you can 100% copy over for any app (though I suspect you'd be able to use most, as is).

## Known limitations...

 - Will not handle the automatic start/stop of the Appium service.
 - Will not handle Simulator/Device 'issues'.
 - You must ensure services such as GPS, etc are already enabled and set (if you require to writes
   tests around those).
 - Hard coded to use Appium default launch  arguments.

## Want more?

Drop me an email, sherbhachu@googlemail.com for any comments, suggestions, etc.

## Instructions/Config required prior to use...

I like to use RVM to get my house in order...

1. cd into appium-android-trainline-example/
2. rvm use ruby-2.3.0
3. rvm gemset create appium-android-trainline-example
4. rvm gemset use appium-android-trainline-example
5. gem install nokogiri -v '1.8.1'
6. bundle install

**Then...**

You will need to set the 'deviceName' in the 'appium.txt' files.

To do this, launch your AVD or Genymotion simulator and run the following command...

# adb devices -l

Example output....

List of devices attached
192.168.56.101:5555    device product:vbox86p model:Google_Nexus_5X___7_1_0___API_25___1080x1920 device:vbox86p transport_id:9

You want to populate the deviceName with the 'model' ... so in this case, it would be 'Google_Nexus_5X___7_1_0___API_25___1080x1920'

## Example command...

cucumber features/search_journey.feature -p html_report -p androidphonesim
