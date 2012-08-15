Feature: User taking a book from library

  Scenario: A user wants to take an available book
    Given that a user is loggin correctly
    And visit books index view
    When take an available book
    Then the book change his status tu unavailable
    And appear a success message

  Scenario: A user wants to take an unavailable book
    Given that a user is loggin correctly
    And visit books index view
    When take an unavailable book
    Then appear an error message

  Scenario: Show the list of borrowed books for an user
    Given that a user is loggin correctly
    When visite the borrowed books
    Then show the list of borrowed books

  Scenario: A user return a book
    Given that a user is loggin correctly
    And have borrow books
    And visit books index view
    When take an unavailable book
    Then appear an error message

