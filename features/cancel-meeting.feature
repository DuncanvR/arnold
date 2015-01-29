Feature: Cancel meeting
  As the host of a meeting
  I want to be able to cancel a meeting
  So that I can let the other participants know the meeting can't go through

  Scenario: Host cancels scheduled meeting
    Given Bob is the host of a scheduled meeting
    When Bob cancels the meeting
    Then there is no scheduled meeting
      and the participants are notified the meeting is cancelled
      and the system plans a prospective meeting
      and Bob is the host of the prospective meeting
