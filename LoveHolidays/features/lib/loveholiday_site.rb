require_relative "pages/lh_homepage"
require_relative "pages/lh_holiday_search"

module LoveHoliday

  def lh_homepage
    LHHomepage.new
  end

  def lh_holiday_search
    HolidaySearch.new
  end

end
