Feature: Post call test

  Background:
    * def jsonPayload = read('../data/request.json')
    #we can give header and url here


   Scenario: create user details
    Given url 'https://reqres.in/api/users'
    And request jsonPayload
     #parameters
     And param delay = 3
     #comma sepeareted if more headers are there
     And headers {Content-type :'application/json', Accept : 'application/json'}
    When method POST
    Then status 201