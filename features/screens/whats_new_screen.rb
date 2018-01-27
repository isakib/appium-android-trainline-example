class WhatsNewScreen < BaseScreen

  def close_button; find_element(:id, 'close_button') end
  def lets_go_button; find_element(:id, 'lets_go_button') end

  def click_lets_go_button
    el = find_element(:class, 'android.widget.ScrollView')
    actions = Appium::TouchAction.new
    actions.press element: el
    actions.move_to x: 0, y: -100
    actions.release ; actions.perform
    lets_go_button.click
  end

end

def whats_new_screen
  @whats_new_screen ||= WhatsNewScreen.new
end