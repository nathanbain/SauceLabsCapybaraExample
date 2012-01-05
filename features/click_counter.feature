Feature: Click Counter
	@complete
	Scenario: When I load the click counter the number of clicks should be "0"
		When I open the click counter
		Then there should be "0" clicks
	@complete
	Scenario: When I click once the  number of clicks should be "1"
		Given I open the click counter
		When I click
		Then there should be "1" clicks
	@complete
	Scenario: When I click twice  the  number of clicks should be "2"
		Given I open the click counter
		And I have clicked "1" time
		When I click
		Then there should be "2" clicks