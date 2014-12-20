Feature: Indicate availability
  In order to communicate the dates I prefer to meet up
  As a meeting participant
  I want to indicate the dates I'm available for a meeting

  Scenario: Indicate availability for a set of dates in the future
    Given today's date is "2000-01-01"
    And the default availability is "Maybe"
    When I provide the following following preference:
      | Date       | Available |
      | 2000-01-02 | Maybe     |
      | 2000-01-03 | No        |
      | 2000-01-04 | Yes       |
    Then my current availability for the next week is:
      | Date       | Available |
      | 2000-01-01 | Maybe     |
      | 2000-01-02 | Maybe     |
      | 2000-01-03 | No        |
      | 2000-01-04 | Yes       |
      | 2000-01-05 | Maybe     |
      | 2000-01-06 | Maybe     |
      | 2000-01-07 | Maybe     |

