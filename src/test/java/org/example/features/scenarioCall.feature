Feature: call scenario from anoher scanario


  @tag1
  Scenario:
    * print 'this is test 1'

  @tag2
  Scenario:
    * print 'this is test 2'
    * def result = call read('scenarioCall.feature@tag1')