class BaseScreen < AppiumWorld

  def done_button; button('Done') end

end

def base_screen
  @base_screen ||= BaseScreen.new
end