Feature: Login

    Scenario: Verify user gets error for invalid login credentials
        Given I am on facebook homepage
        When I enter !@#$ as login username
        And I enter abcd@1234 as login password
        And I click login button
        Then I verify login error is displayed

    Scenario: Verify user gets error for invalid login credentials-2
        Given I am on facebook homepage
        When I enter deepak@technosoftacademy.io as login username
        And I enter abcd@1234 as login password
        And I click login button
        Then I verify login error is displayed

    Scenario: Verify login fields are enabled
        Given I am on facebook homepage
        Then I verify login username field is enabled
        And I verify login password field is enabled
        And I verify login button is enabled