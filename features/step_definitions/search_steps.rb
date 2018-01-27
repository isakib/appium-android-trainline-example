Given(/^I have launched the Trainline app$/) do
  get_to_the_journey_screen
end

Then(/^I can search for and enter a "([^"]*)" station$/) do |type_of_station|
  case type_of_station
    when "Departure"
      live_times_and_tickets_screen.departure_station_field.click
      handle_location_services_gps_issue
      live_times_and_tickets_screen.departure_station_field.click
      search_screen.search_for_and_click_on_result(@test_data['departure'])
    when "Destination"
      live_times_and_tickets_screen.destination_station_field.click
      handle_location_services_gps_issue
      live_times_and_tickets_screen.destination_station_field.click
      search_screen.search_for_and_click_on_result(@test_data['destination'])
    else raise "Valid options are Departure or Destination"
  end
end

Then(/^I can verify that the Departure and Destination stations have been set$/) do
  expect_departure_and_destination_fields_to_have_content(@test_data['departure'],@test_data['destination'])
end