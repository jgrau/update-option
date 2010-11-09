Feature: Manage clients
  In order to [goal]
  [stakeholder]
  wants [behaviour]
  
  Scenario: Register new client
    Given I am on the new client page
    When I fill in "Name" with "name 1"
    And I press "Create"
    Then I should see "name 1"

  Scenario: Delete client
    Given the following clients:
      |name|
      |name 1|
      |name 2|
      |name 3|
      |name 4|
    When I delete the 3rd client
    Then I should see the following clients:
      |Name|
      |name 1|
      |name 2|
      |name 4|
