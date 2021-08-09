Feature: call to token generation feature

  Background:
    * def myfeature = call read('userDetailsAUTHENTICATIONtest.feature'){email:'eve.holt@reqres.in',password:'pistol'}
    * def authToken = myfeature.accessToken


    Scenario: POst call with access token
      When url 'https://reqres.in/api/users?page=2'
      Then header Authorization = authToken

      When method GET
      Then status 204