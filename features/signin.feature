# features/authentication/session.feature

Feature: Session handling
  In order to use the site
  As a registered user
  I need to be able to login and logout

  Background:
    Given that a user exists
    And I am logged out

  Scenario Outline: Logging in
    Given the following user exists:
      | email       | password    |
      | yo@mama.com | supersecret |
    And I am on the new user session page
    When I fill in "user_email" with "<email>"
    And I fill in "user_password" with "<password>"
    And I press "Sign in"
    Then I should <action>
    Examples:
      | email           | password    | action                          |
      | yo@mama.com     | supersecret | see "Signed in successfully"    |
      | bad@example.com | password    | see "Invalid email or password" |

  Scenario: Logging out
    Given I am logged in
    When I go to the destroy user session page
    Then I should see "Signed out successfully"