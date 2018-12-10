Feature: data table containing Login details
  @datavalidation
  Scenario: I am able to iterate through the login details
    Given I have a data table
    | test1@test.com |  Valid12! |
    | test31@test.com  |  invalid |
    | magicjohnson@gmail.com  |  Password! |
    | invalid.email.com  |  validPassword.4 |
    Then I am able to print out the information


    @email
    Scenario: I am able to generate valid Logins
      Given I have a data table
      | test1@test.com |  Valid12! |
      | test31@test.com  |  invalid |
      | magicjohnson@gmail.com  |  Password! |
      | invalid.email.com  |  validPassword.4 |
      Then I have the correct email validation
