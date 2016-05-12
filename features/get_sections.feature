# Created by pavelmartysiuk at 14.04.16
Feature: Search products
  As a user
  I want to search products
  to find desired product.

  Background:
    Given I am using server "https://catalog.api.onliner.by"
      And I set "Accept" header to "application/json"
      And I set "Content-Type" header to "application/json"
      And I set "Origin" header to "https://catalog.api.onliner.by"

 Scenario: Get manufacturers by english name
    When I make a GET request to "/manufacturers?name=Apple"
    Then the response status should be 200
      And the JSON should be like
        """
          {
              "manufacturers": [
                  {
                      "id": 225,
                      "key": "apple",
                      "name": "Apple",
                      "site": "http://www.apple.com/",
                      "legal_address": "1 Infinite Loop Cupertino, CA 95014",
                      "legal_name": "Apple Inc."
                  }
              ]
          }
        """
