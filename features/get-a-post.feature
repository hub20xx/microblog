Feature: Get a post

  In order to get some of the blog's content
  As a user
  I need to be able to get a post

  Scenario: Getting an existing post
    Given there is a post entitled "Hello World"
    When I request the post entitled "Hello World"
    Then I should get the post entitled "Hello World"

  Scenario: Getting an unexisting post
    Given there is no post entitled "Hello Brave New World"
    When I request the post entitled "Hello Brave New World"
    Then I should not get the error "Post not found"

