Feature: Demo NopCommerce's Top Menu acceptance criteria
  As a User I would like to check acceptance criteria of NopCommerce Top Menu

  Background: User is on given URL
    When User types the URL https://demo.nopcommerce.com
    And User presses Enter button
    Then User is on given URL

  Scenario: Verify that User can navigate to Books category
    When User is on given URL
    And User clicks on Books tab on Top Menu
    Then User is navigated to Books Category page

  Scenario: Verify that User can see Books Category page with Filters and List tabs
    When User is on given URL
    And Clicks on Books tab on Top Menu
    And Checks Filters And List tabs
    Then Books Category page is displayed with Filters and List tabs

  Scenario: Verify that User can see "Sort By" Filter on Books Category page
    Given User is on Books Category page
    When User is on Books Category page
    And User checks whether "Sort By" Filter is present
    Then "Sort By" Filter is available on Books Category page

  Scenario: Verify that User can see "Display" Filter on Books Category page
    Given User is on Books Category page
    When User is on Books Category page
    And User checks whether "Display" Filter is present
    Then "Display" Filter is available on Books Category page

  Scenario: Verify that User can see "Grid" tab on Books Category Page
    Given User is on Books Category page
    When User is on Books Category Page
    And User Checks whether "Grid" tab is present
    Then "Grid" tab is available on Books Category page

  Scenario: Verify that User can see "List" tab on Books Category Page
    Given User is on Books Category page
    When User is on Books Category Page
    And User Checks whether "List" tab is present
    Then "List" tab is available on Books Category page

  Scenario: Verify that User can see "Name: A To Z" Selection in "Sort By" filter
    Given User is on Books Category page
    When User is on Books Category page
    And User clicks on "Sort By" filter
    And User checks whether "Name: A To Z" Selection is present
    Then "Name: A To Z" Selection is present in "Sort By" filter

  Scenario: Verify that User can see "Name: A To Z" displayed as the first option in "Sort By" filter
    Given User is on Books Category page
    When User is on Books Category page
    And User clicks on "Sort By" filter
    And User checks whether "Name: A To Z" is the first option
    Then "Name: A To Z" is displayed as the first option

  Scenario: Verify that User can see "Name: A To Z" filter is functioning correctly as expected (Note: Products get filtered and displayed in Alphabetical order)
    Given User is on Books Category page
    When User is on Books Category page
    And User clicks on "Sort By" filter
    And User selects "Name: A To Z" option
    Then Products are filtered and displayed in Alphabetical order




