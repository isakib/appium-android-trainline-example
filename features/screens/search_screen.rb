class SearchScreen < BaseScreen

  def back_arrow; find_element(:id,'search_station_back_image') end
  def search_field; find_element(:id,'search_station_searchbox') end
  def clear_search_button; find_element(:id,'search_station_clear_search_image') end

  def search_results; find_element(:id,'search_result_list') end
  def each_search_result; find_elements(:id,'nearest_stations_list_item_station_name') end


  def search_for_and_click_on_result(search_term)
    search_screen.search_field.send_keys(search_term)
    wait_true { search_results.displayed? }
    search_screen.click_on_search_result(search_term)
  end

  def click_on_search_result(result_to_choose)
    each_search_result.each do |result|
      if result.text == result_to_choose
        result.click
      end
    end
  end

end

def search_screen
  @search_screen ||= SearchScreen.new
end