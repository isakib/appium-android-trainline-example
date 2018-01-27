And(/^I choose to make a Single journey departing Today, now$/) do
  live_times_and_tickets_screen.single_button.click
  set_outbound_to_today
end

And(/^I choose "([^"]*)" Adults$/) do |num_of_adults|
  live_times_and_tickets_screen.num_of_passengers.click
  wait_true { passengers_screen.passengers_title.displayed? }
  passengers_screen.set_number_of_adults_to num_of_adults
  expect(live_times_and_tickets_screen.num_of_passengers.text).to eql("#{num_of_adults.to_i} Adults")
end

And(/^I choose the "([^"]*)" Railcard$/) do |railcard_to_select|
  live_times_and_tickets_screen.railcards.click
  railcards_screen.choose_single_railcard railcard_to_select
  railcards_screen.done_tick.click
end

Then(/^I can verify that the "([^"]*)" Railcard is seen$/) do |railcard_to_confirm|
  wait_true { live_times_and_tickets_screen.railcards.displayed? }
  expect(live_times_and_tickets_screen.railcards.text.to_i).to eql(1)
  expect(live_times_and_tickets_screen.return_all_railcards).to include("#{railcard_to_confirm} x 1")
end