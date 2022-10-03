Feature: Book category

  Background: I should be able to see homepage
    Given I enter URL "https://demo.nopcommerce.com/" in browser
    And   I am on home page

  Scenario Outline: I should be able to see top menu tabs on homepage with categories
    When I am o home page
    Then I should be able to see top menu tabs with "<categories>"
    Examples:
      | Categories        |
      | Computer          |
      | Electronic        |
      | Apparel           |
      | Digital downloads |
      | Books             |
      | Jewellery         |
      | Gift card         |

  Scenario Outline: I should be able to see book page with filters
    When I select book category from top menu tabs on home page
    Then I should be navigated to book category
    And  I should be able to see "<filters>"
    Examples:
      | Filters  |
      | Short by |
      | Display  |
      | The Grid |
      | List tab |

  Scenario Outline: I should be able to see list of term of each filters
    Given I am on book page
    When  I click on "<filters>"
    Then  I should be able to see "<list>" in dropdown menu
    Examples:
      | Filter  | List                                                                           |
      | Sort by | Name: A to Z, Name: Z to A, Price: Low to High, Price: High to Low, Created on |
      | Display | 3, 6, 9                                                                        |

  Scenario Outline: I should be able to choose any filter option with specific result
    Given I am on book page
    When  I click on "<filter>"
    And   I click on any "<option>"
    Then  I should be able to choose any filter option from the list
    And   I should be able to see "<result>"
    Examples:
      | Filter  | Option             | Result                                                            |
      | Sort by | Name: A to Z       | sorted product with the product name in alphabetical order A to Z |
      | Sort by | Name: Z to A       | sorted product with the product name in alphabetical order Z to A |
      | Sort by | Price: low to high | sorted product with the price in descending order                 |
      | Sort by | Price: high to low | sorted product with the price in ascending order                  |
      | Sort by | Created on         | Recently added product should be show first                       |
      | Display | 3                  | 3 products in a page                                              |
      | Display | 6                  | 6 products in a page                                              |
      | Display | 9                  | 9 products in a page                                              |

  Scenario Outline: I should be able to see product display format according display format type as per given picture in srs documents
    Given I am on book page
    When  I click on "<display format icon>"
    Then  I should be able to see product display format according display format type as per given picture in srs documents
    Examples:
      | Display format icon |
      | Grid                |
      | List                |