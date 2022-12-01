Feature: Addition
  @smoke_test
  Scenario: Addition the two numbers
    Given I have two numbers 121 and 331
    When I click on Add button
    Then The output should be 452

  @smoke_test
  Scenario: Addition with negative numbers
    Given I have two numbers 3 and 5
    When I click on Add button
    Then The output should be 8
