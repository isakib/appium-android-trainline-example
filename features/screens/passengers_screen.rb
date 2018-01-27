class Passengers < BaseScreen

  def passengers_title; text('Passengers') end

  def decrement_adult; find_elements(:id,'decrement_button')[0] end
  def increment_adult; find_elements(:id,'increment_button')[0] end
  def count_of_adults; find_elements(:id,'no_of_passengers')[0] end

  def decrement_child; find_elements(:id,'decrement_button')[1] end
  def increment_child; find_elements(:id,'increment_button')[1] end
  def count_of_children; find_elements(:id,'no_of_passengers')[0] end

  def set_number_of_adults_to(num_of_adults)
    difference = num_of_adults.to_i - count_of_adults.text.to_i
      if difference < 0
        difference.times { decrement_adult.click }
      elsif difference > 0
        difference.times { increment_adult.click }
      end
    wait_true { count_of_adults.text.to_i == num_of_adults.to_i }
    done_button.click
  end

end

def passengers_screen
  @passengers_screen ||= Passengers.new
end