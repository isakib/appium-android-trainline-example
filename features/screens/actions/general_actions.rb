module GeneralActions

  def get_to_the_journey_screen
    wait_true { whats_new_screen.close_button.displayed? }
    whats_new_screen.click_lets_go_button
    wait_true { bottom_nav_bar.search_button.displayed? }
  end

  def allow_access_to_devices_location_services
    value = exists { xpath("//android.widget.TextView[@resource-id='com.android.packageinstaller:id/permission_message']") } ? true : false
    if value == true
      complex_find_exact('android.widget.Button', "ALLOW").click
    end
  end

  def handle_location_services_gps_issue
    allow_access_to_devices_location_services
    sleep(1) ; back
    back unless element_with_string_displayed?('Find times and prices')
  end

  def set_my_location_as_london
    set_location(:latitude => '51.5073509',:longitude => '-0.1277583')
  end

  def set_outbound_to_today
    unless live_times_and_tickets_screen.outbound_text.text == "Today, now"
      live_times_and_tickets_screen.outbound_text.click
      outbound_screen.set_to_today_now
      wait_true { live_times_and_tickets_screen.find_times_and_prices_button.displayed? }
      expect(live_times_and_tickets_screen.outbound_text.text).to eql("Today, now")
    end
  end

end

World(GeneralActions)