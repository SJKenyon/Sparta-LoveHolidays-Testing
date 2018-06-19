require 'capybara/dsl'

class LHHomepage

  include Capybara::DSL

  HOMEPAGE_URL = 'https://www.loveholidays.com/'
  DESTINATION_ID = 'searchUnitDestinationInput'

  def visit_home_page
    visit(HOMEPAGE_URL)
  end

  def click_holidays_tab
    find(:css, 'ul li').click
  end

  def view_all_holidays
    click_link("View all Holidays")
  end

  def find_destination_input
    find_field(:id, DESTINATION_ID)
  end

  def write_spain
    fill_in(DESTINATION_ID, with: "Spain")
    find(:xpath, "/html/body/div[5]/div[1]/div[1]/div/div/div[3]/div/div/div/div/div/div/div/div[4]/div/div[2]/div/div/div/ul/li[1]/div/a").click
    find(:xpath, "/html/body/div[5]/div[1]/div[1]/div/div/div[3]/div/div/div/div/div/div/div/div[4]/div/div[1]").click
  end

  def click_search
    click_link("Search")
  end

end
