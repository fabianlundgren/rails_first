Feature: Comments on articles
  As a visitor
  When I read a specific article
  I would like to see and make comments on the article

  Background:
  Given the following articles exist
    | title                | content                            |
    | A breaking news item | Some really breaking action        |

Scenario:
  Given I am on the landing page
  Then I should see "A breaking news item"
  And I shouldn't see "A breaking news item comments"
  When I click "Add Comment"
  Then I should see "New comment for A breaking news item"
  When I fill in "Email" with "commenter@email.com"
  And I fill in "Comment" with "Wow, that is crazy"
  And I click "Submit"
  Then I should be on "A breaking news item" page
  And I should see "A breaking news item comments"
  And I should see "commenter@email.com"
  And I should see "Wow, that is crazy"
