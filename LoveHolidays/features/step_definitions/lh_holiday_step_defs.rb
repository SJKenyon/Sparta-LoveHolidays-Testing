# If I click to view Spain holidays, it should filter my results

Given("I am on the homepage") do
  lh_homepage.visit_home_page
end

And("I click on destinations") do
  lh_homepage.click_destinations_tab
end

When("I click to view all holidays in spain") do
  pending
end

And("I click search") do
  lh_spain_holidays.click_search
end

Then("it should filter my results to Spain") do
  pending
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
  expect(lh_holiday_search.bnb_visable).to eq FALSE
  expect(lh_holiday_search.beach_visable).to eq FALSE
end

# I should be able to remove one filter from my search results

When("I click X on one of the filters") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("it should be removed") do
  pending # Write code here that turns the phrase above into concrete actions
end

# I should be able to view the total of my holiday for multiple people

And("I search for any holiday") do
  lh_homepage.click_search
end

When("I toggle to total rather than per person") do
  lh_holiday_search.toggle_total
  sleep 5
end

Then("it should show the full price for all people") do
  expect(lh_holiday_search.pp_visable).to eq FALSE
end
