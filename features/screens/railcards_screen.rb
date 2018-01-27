class RailCardsScreen < BaseScreen

  def discount_cards_heading; complex_find_exact('android.widget.TextView', 'Discount cards') end
  def selected_discount_cards_heading; find('Selected discount cards') end

  def search_field; find_element(:id, 'discount_card_search_field') end
  def done_tick; find_element(:id, 'discount_card_picker_done_button') end
  def discount_card_names; find_elements(:id, 'discount_card_name') end

  def choose_single_railcard(railcard_name)
    wait_true { discount_cards_heading.displayed? }
    scroll_to(railcard_name).click
    scroll_to_top_of_railcard_list
    wait_true { selected_discount_cards_heading.displayed? }
  end

  def scroll_to_top_of_railcard_list
      el = find_element(:class, 'android.support.v7.widget.RecyclerView')
      actions = Appium::TouchAction.new
      actions.press element: el
      actions.move_to x: 0, y: 200
      actions.release ; actions.perform
  end


end

def railcards_screen
  @railcards_screen ||= RailCardsScreen.new
end