Feature: Service cliente POST
  AS QA Automation
  I want to create a client
  To validate the status code and response

  Background:
    * url url

  Scenario: check the service POST method
    * def requestCreate = {"name": "#(name)", "job": "#(job)"}
    * def responsePost = read('classpath:karate/request/createFeature/responsePost.json')

    Given path 'users'
    And request requestCreate
    When method post
    Then status 201
    And match response == responsePost

  Scenario Outline: POST a user with invalid values an id in the url
    * def nameUser = '<name>'
    * def responseError = read('classpath:karate/request/createFeature/responseError.html')
    * def requestCreate = read('classpath:karate/request/createFeature/requestPost.json')

    Given path 'users'
    And request requestCreate
    When method POST
    Then status 400
    And match response == responseError

    Examples:
      | name |
      |****|