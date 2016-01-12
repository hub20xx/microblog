Feature: Get the latest posts

  In order to see what the blog is about
  As a user
  I need to be able to get the latest posts

  Scenario: Getting the latest posts when there is no post yet
    Given there is no post
    When I request the latest posts
    Then I should get the error "No posts yet"

  Scenario: Getting the latest posts when there are 2 posts
    Given there is a post entitled "Hello Goodbye"
    And there is a post entitled "Hello You"
    When I request the latest posts
    Then I should get the post entitled "Hello Goodbye"
    And I should get the post entitled "Hello You"

