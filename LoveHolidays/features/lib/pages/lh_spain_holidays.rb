require 'capybara/dsl'

class SpainHolidays

  include Capybara::DSL

  def click_search
    click_link("Search")
  end

end
