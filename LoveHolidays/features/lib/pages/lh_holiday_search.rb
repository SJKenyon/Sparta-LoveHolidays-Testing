require 'capybara/dsl'

class HolidaySearch

  include Capybara::DSL

  def two_adults_filter
    find_link('2 Adults').visible?
  end

  def bed_and_breakfast_filter
    click_link("Bed and Breakfast")
  end

  def beach_filter
    click_link("Beach")
  end

  def bnb_visable
    find_link('Bed and Breakfast').visible?
  end

  def beach_visable
    find_link('Beach').visible?
  end

  def reset_results
    click_button("Reset results")
  end

  def toggle_total
    find(:xpath, "/html/body/div[2]/div/div/div[2]/div/div[2]/div/div[2]/div[2]/div/div[2]/div/div/div/div/label").click
  end

  def pp_visable
    find(:xpath, "/html/body/div[2]/div/div/div[2]/div/div[2]/div/div[2]/div[4]/div[1]/div/div/article/div[2]/div/div[2]/div/div/span/div[2]/span/span").visable?
  end

end
