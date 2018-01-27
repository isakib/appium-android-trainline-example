class BottomNavBar < BaseScreen

  def favourites_button; xpath("//*[@resource-id='com.thetrainline:id/action_my_account']/android.view.ViewGroup/android.widget.TextView[@text='Favourites']") end
  def search_button; xpath("//*[@resource-id='com.thetrainline:id/action_search']/android.view.ViewGroup/android.widget.TextView[@text='Search']") end
  def my_tickets_button; xpath("//*[@resource-id='com.thetrainline:id/action_my_tickets']/android.view.ViewGroup/android.widget.TextView[@text='My tickets']") end

end

def bottom_nav_bar
  @bottom_nav_bar ||= BottomNavBar.new
end