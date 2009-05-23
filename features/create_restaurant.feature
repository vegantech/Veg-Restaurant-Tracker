Feature: Create Restaurant
    In order to add new vegetarian restaurants
    As a user
    I want to add a new restaurant

Scenario: Add vegetarian Restaurant
    Given I go to the homepage
    And I follow "New Restaurant"
    And I fill in "name" with "New vegetarian restaurant"
    When I press "Create"
    Then I should see "New Restaurant"
    And I should not see "Create"
