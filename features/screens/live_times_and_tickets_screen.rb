class LiveTimesAndTicketsScreen < BaseScreen

  def departure_station_field; find_element(:id,'btn_from') end
  def destination_station_field; find_element(:id,'btn_to') end
  def swap_stations_button; find_element(:id,'swap_stations_btn') end

  def arrivals_link; find_element(:uiautomator, 'new UiSelector().className("android.widget.TextView").textStartsWith("Arrivals")') end

  def single_button; button('Single') end
  def return_button; button('Return') end
  def open_return_button; button('Open return') end

  def outbound_text; find_element(:id, 'outbound_journey_date_selector_time_picker') end
  def returning_text; find_element(:id, 'return_journey_date_selector_time_picker') end

  def num_of_passengers; find_element(:id, 'number_of_passengers') end
  def railcards; find_element(:id, 'number_of_discount_cards') end
  def railcard_names; find_elements(:id, 'railcard_title') end

  def find_times_and_prices_button; find('Find times and prices') end

  def return_all_railcards
    railcard_names.map {|railcard| railcard.text }
  end

end

def live_times_and_tickets_screen
  @live_times_and_tickets_screen ||= LiveTimesAndTicketsScreen.new
end