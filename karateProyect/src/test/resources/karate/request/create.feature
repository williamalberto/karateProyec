Feature: Service cliente POST
  AS QA Automation
  I want to create a client
  To validate the status code and response

  Background:
    * url url

  Scenario: check the service POST method
    * def requestCreate = {"name": "#(name)", "job": "#(job)"}
    * def responsePost = read(''classpath:karate/request/responsePost.json)

    Given path 'users'
    And request requestCreate
    When method post
    Then status 201
    And match response == responsePost