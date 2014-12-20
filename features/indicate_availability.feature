Feature: Indicate availability
  In order to communicate the dates I prefer to meet up
  As a meeting participant
  I want to indicate the dates I'm available for a meeting

  Scenario: Indicate availability for a set of dates
    Given today is "2001-01-01"
    And the default availability is "Maybe"
    When I set my availability to:
      | Date       | Available |
      | 2001-01-02 | Maybe     |
      | 2001-01-03 | No        |
      | 2001-01-04 | Yes       |
    Then my availability for week 1 in 2001 is:
      | Date       | Available |
      | 2001-01-01 | Maybe     |
      | 2001-01-02 | Maybe     |
      | 2001-01-03 | No        |
      | 2001-01-04 | Yes       |
      | 2001-01-05 | Maybe     |
      | 2001-01-06 | Maybe     |
      | 2001-01-07 | Maybe     |

