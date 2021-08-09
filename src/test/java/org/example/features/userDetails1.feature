Feature: user details

  Background:
    * def expectedOutput = read ('../data/result.json')
    * def feature = read('userDetails.feature')
    * def result = call feature

    Scenario: request user 3 details
    Given url 'https://reqres.in/api/users/2'
    When method GET
    Then status 200
    Then print result