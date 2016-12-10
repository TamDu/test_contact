Feature: Support Form

Scenario: Submit web support form 
	Given I am on the Support Form 
	When I submit the completed Support Form
	Then I see the success message 