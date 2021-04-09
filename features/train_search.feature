Feature: seat availability functionality

  Scenario: verify the user search for the train availability
    Given user is on home page
    When user enter New Delhi from search box
#   And user choose New Delhi from the list
    And user enter Chennai in to search box
#   And user choose from the list
    And user choose the journey quota as LADIES from the list
    And user select the future date from the calender
    And user choose the class from the journey class from the list
    And user search for the train
    Then user should see the Results of the particular train