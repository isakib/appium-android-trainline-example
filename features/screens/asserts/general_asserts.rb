module GeneralAssertions

  def expect_departure_and_destination_fields_to_have_content(departure,destination)
    expect(live_times_and_tickets_screen.departure_station_field.text).to eql(departure)
    expect(live_times_and_tickets_screen.destination_station_field.text).to eql(destination)
  end

end

World(GeneralAssertions)