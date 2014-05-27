Feature: Search

  Scenario: Find messages by content
    Given a User has posted the following messages:
      | content            |
      | I am making dinner |
      | I just woke up     |
      | I am going to work |
    When I search for "I am"
    Then the results are:
      | content            |
      | I am making dinner |
      | I am going to work |

  @javascript
  Scenario: Find messages by content using auto-search
    Given a User has posted the following messages:
      | content            |
      | I am making dinner |
      | I just woke up     |
      | I am going to work |
    When I enter "I am" in the search field
    Then the results are:
      | content            |
      | I am making dinner |
      | I am going to work |
