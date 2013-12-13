Feature: いちらんとしょうさいの表示

Scenario: Showin Items and Item
  Given I am on the Items Screen
  Then I wait to see a navigation bar titled "いちらん"
  Then I touch list item number 1
  Then I go back
  Then I wait to see a navigation bar titled "いちらん"
