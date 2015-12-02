Feature: creating posts as an admin
  In order to secure my application
  As a registered admin
  I want to be able to create posts

  Background:
    Given that a User exists with the email of "user@test.com" and the password of "password"
    Given that I am logged in

  Scenario: Creating a new posts
    Given that I clicked on the new post button
    And I am on the new post page
    When I fill out the new post form
    And I click submit
    Then I should have created a new post
