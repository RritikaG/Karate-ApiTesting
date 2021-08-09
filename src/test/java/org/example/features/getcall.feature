Feature: user Deatils

  Background:
    * def expectedOutput = read('../data/result.json')

    Scenario: request user 3 details
      Given url 'https://reqres.in/api/users/3'
      When method GET
      Then status 200
      # when we have single line
      * def myFun = function (){return 'hi'}
      * def returnData = call myFun
      Then print returnData
      # when we have multiple lines
      * def myFun1 =
      """
        function(){
        return 'mydata'
        }
      """
      * def returnData = call myFun1
      Then print returnData


