Feature: Login Page
  In order to keep out the bad guys
  As a user
  I want to have to login to see my private page

  Scenario: Authenticated User
    Given the login page
    When I log in with proper credentials
    Then I should see the secret page

  Scenario: Non-authenticated User
    Given the login page
    When I log in without proper credentials
    Then I should see the login page
      And I should get a notice that my credentials are invalid

  Scenario: No User
    Given the login page
    When I log in with no credentials
    Then I should see the login page
      And I should get a notice that my credentials are invalid
