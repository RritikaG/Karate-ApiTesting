Feature: database connetion

  Background:
    * def config = {username: 'ritika', password: 'abc1234',url:'', driverClassName:'' }
    * def dbObj = Java.type('org.example.features.DbUtils')
    * def db = new dbObj(config)

    Scenario:
      * def employes = db.readRows('select * from table')
      Then print employes
