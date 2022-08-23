Feature: Service client GET
  As QA Automation
  I want to consult a client
  To validate the status code and response

  Background: consume service
    * url url

  Scenario: Check the service get method
    * def responsesGet = read('classpath:karate/request/clientFeature/responseGet.json')
    Given path 'users','2'
    When method get
    Then status 200
    And match response == responsesGet
    And assert response.support.text == "To keep ReqRes free, contributions towards server costs are appreciated!"
    And assert response.data.email == email

  Scenario Outline: GET a client with invalid values an id in the url
    * def idClient = '<id>'
    * def responseError = {}
    * def requestCreate = read('classpath:karate/request/clientFeature/responseGet.json')

    Given path 'users', idClient
    And request requestCreate
    When method GET
    Then status 404
    And match response == responseError

    Examples:
      | id |
      |8787878|
      |Uno|