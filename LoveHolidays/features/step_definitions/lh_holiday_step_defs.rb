# If I click to view Spain holidays, it should filter my results

Given("I am on the homepage") do
  lh_homepage.visit_home_page
end

And("I write Spain in the destination") do
  lh_homepage.write_spain
end

When("I click search") do
  lh_homepage.click_search
end

Then("it should filter my results to Spain") do
  lh_holiday_search.spain_filter
end

# If I want to view holidays, it should be standard that I am booking for 2 people

When("I click to view all holidays") do
  lh_homepage.click_holidays_tab
  lh_homepage.view_all_holidays
end

Then("it should filter my results to two adults") do
  lh_holiday_search.two_adults_filter
end

# I should be able to reset my search results

And("I have the filters 'beach' and 'bed and breakfast' on my search") do
  lh_homepage.click_search
  lh_holiday_search.bed_and_breakfast_filter
  lh_holiday_search.beach_filter
end

When("I click reset") do
  lh_holiday_search.reset_results
end

Then("it should remove all filters") do
  page.should have_no_selector(:xpath, "/html/body/div[2]/div/div/div[2]/div/div[2]/div/div[2]/div[1]/div/div/div/div/span[3]/div/a/span")
end

# I should be able to remove one filter from my search results

When("I click X on one of the filters") do
  lh_holiday_search.delete_filter
end

Then("it should be removed") do
  page.should have_no_selector(:xpath, "/html/body/div[2]/div/div/div[2]/div/div[2]/div/div[2]/div[1]/div/div/div/div/span[4]/div/a/span")
end

# I should be able to view the total of my holiday for multiple people

And("I search for any holiday") do
  lh_homepage.click_search
end

When("I toggle to total rather than per person") do
  lh_holiday_search.toggle_total
end

Then("it should show the full price for all people") do
  page.should have_no_selector(:xpath, "/html/body/div[2]/div/div/div[2]/div/div[2]/div/div[2]/div[4]/div[1]/div/div/article/div[1]/span/div[2]/div[1]/div/div/div/span/span")
end
