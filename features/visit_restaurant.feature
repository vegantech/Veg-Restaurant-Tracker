Feature: Visit Restaurant
    In order to record visits
    As a user
    I want to visit new restaurant

Scenario: Add vegetarian Restaurant
    Given a restaurant named "Vege Thai"
    And I go to the homepage
    When I press "Visit"
    Then I should see "Vege Thai visited"
    And "Vege Thai" should have 1 visit recorded with a timestamp

