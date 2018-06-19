require_relative "pages/lh_homepage"
require_relative "pages/lh_holiday_search"
require_relative "pages/lh_spain_holidays"

module LoveHoliday

  def lh_homepage
    LHHomepage.new
  end

  def lh_holiday_search
    HolidaySearch.new
  end

  def lh_spain_holidays
    SpainHolidays.new
  end

end
