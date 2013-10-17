Feature: Signing in

Scenario: Unsuccessful signin
  Given a user visits the signin page
  When he submits invalid signin information
  Then he should see an error message

Scenario: Successful signin
  Given a user visits the signin page
    And the user has an account
    And the user submits valid singin information
  Then he should see his profile page
    And he should see a signout link
    And he should not see a signin link