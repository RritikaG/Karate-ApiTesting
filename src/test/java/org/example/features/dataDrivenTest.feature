Feature: data driven test

  Background:
     * url 'https://dummy.restapiexample.com/'

    Scenario Outline: create employee
      Given path 'api/v1/create'
      And request {"name":<name>,"salary":<salary>,"age":<age>}
      When method POST
      Then status 200
      Then print response
      * def result = response


      Given path 'api/v1/employee/' + result.data.id
      When method GET
      Then status 200
      Then print response


     # Examples:
     #   |name|salary|age
     #   |test |123|23

      Examples:
      |read('../data/inputData.csv')