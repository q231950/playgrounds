//: # The Crime
/*:
  `@ios @social @post_a_link_post`\
  `Scenario: User can post a post with a link`\
    `Given I create a new user`\
    `And I add user $NewBasicUser to feature switch "enable_commbox_2.0_v1"`\
    `And I login fast on default sandbox using $NewBasicUser credentials`\
    `And I open the compose post view`\
    `And I type "Eat 🍌 and get monkey powers. https://apple.com " in ComposePostScreen.textField`\
    `When I see a link preview with url "https://apple.com"`\
    `And I tap on ComposePostScreen.postButton`\
    `And I tap on MyStartPage.firstMoreButton`\
    `Then I see "Eat 🍌 and get monkey powers. https://apple.com " text`
*/
/*:
*I want something like this.*\
\
Not exactly like this, because it's only ok to read but hard to type, but *some DSL in this direction.*\
\
Something with structure.

 */
//: [Next](@next)
