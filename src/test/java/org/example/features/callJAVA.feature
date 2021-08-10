Feature: java function calling

  Scenario: call java method
  * def javaDemo = Java.type('org.example.features.javaFunction')
  * def result = new javaDemo().nonStaticFunction()
  * def result2 = javaDemo.staticFunction()
