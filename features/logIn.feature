Feature: Sign in by user
  As a user
  I want to sign in
  To use all features of carsaver

  Background:
    Given I am using server "https://demo.carsaver.klika-tech.com"
      And I set "Content-Type" header to "application/json"

###################POSITIVE SCENARIOS###################

  Scenario: User sign in with valid credentials
    When I make a POST request to "/user/login"
      """
        {
          "password": "123123123",
          "email": "pm@crsv-dev.com"
        }
      """
    Then the response status should be 200
      And the JSON should be
        """
          {
            "message": "Logged In Successfully.",
            "status": "ok",
            "user": {
              "email": "pm@crsv-dev.com",
              "createdAt": "2016-04-25T13:38:35.306Z",
              "zip_code": "34997",
              "id": "85a5f5c5-f86e-4365-aff3-6f6fd541b5ed"
            }
          }
        """