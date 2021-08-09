Feature: Api Authentication

  Background:
    * url 'https://reqres.in/api/register'

    Scenario: Authentication
      Given path 'toke'
      And form field grant_type = 'client_credentials'
      And form field client_id = ''
      And form field client_secret = ''
      When method POST
      Then status 200

      * def accessToken = response.access_token

      # this will generate a access token in response

      Given path ''
      And header Authorization = 'Bearer' + accessToken


