Feature: user details

  Background:
    * url 'https://reqres.in/api/users'

    Scenario: request list os user details
      Given param page = 2
      When method GET
      Then status 200
      And match response.status conatins "success"
      # assert will help in cmparing conditions and number also bu match is used for strings