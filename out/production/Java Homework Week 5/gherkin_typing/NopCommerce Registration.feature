Feature: NopCommerce Registration

  As a User I want to check the Register functionality of NopCommerce

  Background: I am on Registration page
    Given I open the URL https://demo.nopcommerce.com/register in Google Chrome
    Then I am on NopCommerce Registration page

  Scenario Outline:
    When I enter First Name "<First Name>"
    And I enter Last Name "<Last Name>"
    And I enter Email Address "<Email Address>"
    And I enter Password "<Password>"
    And I enter Confirm Password "<Confirm Password>"
    And I click on Register button
    Then I can see an Error Message "<Error Message>"
    And I can not register

    Examples:
      | First Name | Last Name | Email Address   | Password | Confirm Password | Error Message                               |
      | " "        | Patel     | patel@gmail.com | 456897   | 456897           | Please enter First Name                     |
      | Maulin     | " "       | patel@gmail.com | 456897   | 456897           | Please enter Last Name                      |
      | Maulin     | Patel     | " "@gmail.com   | 456897   | 456897           | Please enter Valid Email                    |
      | Maulin     | Patel     | patel@gmail.com | " "      | 456897           | Password is Required                        |
      | Maulin     | Patel     | patel@gmail.com | 456897   | " "              | Confirm Password is Required                |
      | Maulin     | Patel     | patel@gmail.com | 456897   | 45689            | Password and Confirm Password do not match  |
      | Maulin     | Patel     | patel@gmail.com | 45689    | 45689            | Minimum 6 Character Password is required    |
      | " "        | " "       | " "             | " "      | " "              | Inputs in Mandatory (*) fields are Required |

  Scenario: I should be able to select any one of the radio button from Gender Label under Your Personal Details section
    Given I am on Gender Label on Your Personal Details section
    When I select "Male" radio button
    And I select "Female" radio button
    Then I am able to select any of those radio button options

  Scenario Outline: I should be able to select Day, Month and Year from the drop down list of Date Of Birth field
    Given I am on Date Of Birth field under Your Personal Details section
    When I select "<Day>"
    And I select "<Month>"
    And I select "<Year>"
    Then I am able to select Day, Month and Year from the drop down list
    Examples:
      | Day | Month | Year |
      | 14  | March | 1984 |

  Scenario: I should be able to check and uncheck the Newsletter check box on Options section
    Given I am on Newsletter label on Options section
    When I click on Newsletter check box
    And I click again on Newsletter check box
    Then I can successfully check and uncheck the box next to Newsletter label

  Scenario: I should be able to register with valid Mandatory (*) field data on registration page
    When I enter First Name "Maulin"
    And I enter Last Name "Patel"
    And I enter Email "patel@gmail.com"
    And I enter Password "456897"
    And I enter Password "456897"
    And I click on Register button
    Then I was able to Register successfully

