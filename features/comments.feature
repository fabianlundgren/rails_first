Feature: Making comments on articles
  As a visitor
  I would like to be able to leave comments on articles.

  Background:
  Given the following articles exist
    | title                | content                            |
    | A breaking news item | Some really breaking action        |

Scenario:
  Given I am on the landing page
  Then I should see "A breaking news item"
  And I shouldn't see "A breaking news item comments"
  When I click "Add a comment"
  # Then I should see "A breaking news item comment" page
  #Then show me the page
  And I fill in "Email" with "random@email.com"
  And I fill in "Comment" with "Random comment"
  And I click "Submit"
  Then I should see "A breaking news item comments"
  And I should see "random@email.com"
