Feature: Automatically assign host
  As a meeting participant
  I want the participant that hosted a meeting longest ago to be automatically assigned as host of a prospective meeting
  So that a fair distribution of the host role over the participants is ensured

  Scenario: Assign the participant who last hosted a meeting as host of the next meeting
    Given the following participants:
      | Participant | Last hosted meeting |
      | Alice       | 2001-01-01          |
      | Bob         | 2001-02-01          |
      | Carol       | 2001-03-01          |
    When the system plans a prospective meeting
    Then Alice is the host of the prospective meeting

  Scenario: Assign the participant who never hosted a meeting as host of the next meeting
    Given the following participants:
      | Participant | Last hosted meeting |
      | Alice       | 2001-01-01          |
      | Bob         | never               |
      | Carol       | 2001-03-01          |
    When the system plans a prospective meeting
    Then Bob is the host of the prospective meeting
