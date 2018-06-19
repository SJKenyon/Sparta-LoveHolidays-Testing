Feature: As a site user I want to be able to book a holiday

  Scenario: If I click to view Spain holidays, it should filter my results

    Given I am on the homepage
    When I write Spain in the destination
    And I click search
    Then it should filter my results to Spain

  Scenario: If I want to view holidays, it should be standard that I am booking for 2 people

    Given I am on the homepage
    When I click to view all holidays
    Then it should filter my results to two adults

  Scenario: I should be able to reset my search results

    Given I am on the homepage
    And I have the filters 'beach' and 'bed and breakfast' on my search
    When I click reset
    Then it should remove all filters

  Scenario: I should be able to remove one filter from my search results

    Given I am on the homepage
    And I have the filters 'beach' and 'bed and breakfast' on my search
    When I click X on one of the filters
    Then it should be removed

  Scenario: I should be able to view the total of my holiday for multiple people

    Given I am on the homepage
    And I search for any holiday
    When I toggle to total rather than per person
    Then it should show the full price for all people
