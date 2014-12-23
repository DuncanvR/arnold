Feature: Automatically plan meeting
  As a meeting participant
  I want the system to automatically plan a prospective meeting after a successful scheduled one
  So that I don't have to worry about planning meetings

  Scenario: Plan prospective meeting
    Given there is no future prospective or scheduled meeting
    When a preconfigured interval has passed
    Then the system plans a prospective meeting
