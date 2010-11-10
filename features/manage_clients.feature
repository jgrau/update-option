Feature: Client handling
  In order to use the site
  As a registered user
  I need to be able to manage clients

  Background:
    Given I am logged in

  Scenario: Listing clients
    Given the following client exists:
      | name    |
      | SJP A/S |
      | DSKO    |
    When I go to the clients page
    Then I should see "SJP A/S"
  
  Scenario: Adding clients
    Given I am on the clients page
    When I follow "Add client"
    And I fill in "client_name" with "Cool Client"
    And I press "client_submit"
    Then I should see "successfully"
    And I should see "Clients"
    And I should see "Cool Client"
    
  Scenario: Editing clients
    Given the following client exists:
      | name    |
      | SJP A/S |
      | DSKO    |
    And I am on the clients page
    When I follow "Edit"
    And I fill in "client_name" with "Cool Client"
    And I press "client_submit"
    Then I should see "successfully"
    And I should see "Clients"
    And I should see "Cool Client"
    
  @wip
  Scenario: Deleting clients
    Given the following client exists:
      | name    |
      | SJP A/S |
      | DSKO    |
    And I am on the clients page
    When I follow "Delete"
    Then I should see "successfully"
    And I should see "Clients"
    And I should not see "SJP A/S"