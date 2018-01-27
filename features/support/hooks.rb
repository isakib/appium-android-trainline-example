Before do
  $driver.start_driver
end

After do
  $driver.driver_quit
end

Before do |scenario|
  set_test_data
  set_my_location_as_london
end

After do |scenario|
  if scenario.failed?
    name = scenario.name.split.join("_")
    screenshot("#{name}.png")
    embed("#{name}.png",'image/png',name)
  end
end
