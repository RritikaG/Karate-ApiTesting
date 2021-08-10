Feature: user Details

  Background:
    * def expectedOutput = read('../data/result.json')

    Scenario: request user details
    Given url 'https://reqres.in/api/users?page=2'
    When method GET
    Then status 200
    And match response = expectedOutput
      Then print abc