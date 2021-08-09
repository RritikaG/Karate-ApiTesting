Feature: user details

  Scenario: get call test

    Given url 'https://reqres.in/api/users/2'
    When method GET
    Then status 200
    Then print response
    # comparing actual output with the response we get
    * def expectedOutput = read('../data/result.json')
    And match response == expectedOutput
    And match response.data.id == 2
    # to check whether field is there
    And response.last_name != null
    # to check this filed should not exixts
    # And response.data.job_code == null (canot do like this)
    * def job_code = response.data.job_code
    And match job_code == null
