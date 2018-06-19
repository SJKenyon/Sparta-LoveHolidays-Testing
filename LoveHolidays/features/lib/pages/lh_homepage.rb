require 'capybara/dsl'

class LHHomepage

  include Capybara::DSL

  HOMEPAGE_URL = 'https://www.loveholidays.com/'

  def visit_home_page
    visit(HOMEPAGE_URL)
  end

  def click_holidays_tab
    find(:css, 'ul li').click
  end

  def view_all_holidays
    click_link("View all Holidays")
  end

  def click_destinations_tab
    find(:css, "li.mega-menu__top__menu-item:nth-child(2) > label:nth-child(2)").click
  end

  def click_spain
    
  end

  def click_search
    click_link("Search")
  end

end
