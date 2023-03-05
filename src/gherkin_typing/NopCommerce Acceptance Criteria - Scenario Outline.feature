Feature: Book Category

  Background: I should be able to see the homepage
    Given I enter url "https://demo.nopcommerce.com" in Browser
    And I am on home page

  Scenario Outline: I should be able to see Top Menu Tabs on homepage with Categories
    When I am on homepage
    Then I should be able to see Top Menu Tabs with "<Categories>"

    Examples:

      | Categories        |
      | Computer          |
      | Electronic        |
      | Apparel           |
      | Digital Downloads |
      | Books             |
      | Jewellery         |
      | Gift Card         |

  Scenario Outline: I should be able to see Books page with Filters

    When I select Books category from the Top Menu tabs on the home page
    Then I should be navigated to Books category
    And  I should be able to see "<Filters>"

    Examples:
      | Filters  |
      | Sort By  |
      | Display  |
      | The Grid |
      | List Tab |

  Scenario Outline: I should be able to see list of terms of each filter
    Given I am on Books page
    When I click on "<Filters>"
    Then I should be able to see "<List>" in Dropdown menu

    Examples:
      | Filters | List                                                                           |
      | Sort By | Name: A To Z, Name: Z To A, Price: Low To High, Price: High To Low, Created On |
      | Display | 3, 6, 9                                                                        |

  Scenario Outline: I should be able to choose any filter option with specific result
    Given When I am on Books page
    When I click on "<Filters>"
    And I click on any "<Option>"
    Then I should be able to choose any filter option from the list
    And I should be able to see "<Result>"

    Examples:
      | Filters | Option             | Result                                                                |
      | Sort By | Name: A To Z       | Sorted products with the product name in alphabetical order of A to Z |
      | Sort By | Name: Z To A       | Sorted products with the product name in alphabetical order of Z to A |
      | Sort By | Price: Low To High | Sorted products with price in ascending order                         |
      | Sort By | Price: High To Low | Sorted products with price in descending order                        |
      | Sort By | Created On         | Recently added products are displayed First                           |
      | Display | 3                  | 3 products are displayed on the page                                  |
      | Display | 6                  | 6 products are displayed on the page                                  |
      | Display | 9                  | 9 products are displayed on the page                                  |

  Scenario Outline: I should be able to see Product Display Format according to Display Format Type as per given picture in SRS Document
    Given I am on Books page
    When I click on "<Display Format Icon>"
    Then I should be able to see Product Display Format according to Display Format Type as per given picture in SRS Document

    Examples:
      | Display Format Icon |
      | Grid                |
      | List                |

