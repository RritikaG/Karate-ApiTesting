Feature: Api Authentication Testing

  Background:
    * url 'https://reqres.in/api/register'

  Scenario: Authentication test
    # when we have many form fields
    * def params =
    """
     {
       'email':'eve.holt@reqres.in',
       'password':'pistol'
     }
    """
    And form fields params
    # we can use like this also
    # And form field email = 'eve.holt@reqres.in'
    # And form field password = 'pistol'
    When method POST
    Then status 200
    Then print response

    * def accessToken = response.token
    # this access token will be used futher
    Then print accessToken



