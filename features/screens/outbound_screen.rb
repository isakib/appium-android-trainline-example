class OutboundScreen < BaseScreen

  def passengers_title; text('Outbound') end
  def today_now_button; button('Today, now') end

  def set_to_today_now
    wait_true { today_now_button.displayed? }
    today_now_button.click
    wait_true { !exists { button('Today, now') } }
    find_elements(:id,'numberpicker_input')
    wait_true { find_elements(:id,'numberpicker_input')[1].text == "Today" }
    done_button.click
  end

end

def outbound_screen
  @outbound_screen ||= OutboundScreen.new
end