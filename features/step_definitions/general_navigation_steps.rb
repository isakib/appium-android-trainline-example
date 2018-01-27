Then(/^I can navigate to Favourites$/) do
  wait_true { bottom_nav_bar.favourites_button.displayed? }
  bottom_nav_bar.favourites_button.click
end

Then(/^I can navigate to My Tickets$/) do
  wait_true { bottom_nav_bar.my_tickets_button.displayed? }
  bottom_nav_bar.my_tickets_button.click
end