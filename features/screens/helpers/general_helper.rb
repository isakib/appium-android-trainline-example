module GeneralHelpers

  def element_with_string_displayed?(element)
  begin
    find(element)
    true
  rescue
    false
  end
  end

end

World(GeneralHelpers)