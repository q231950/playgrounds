/*:
  - Example: *A simple `login` step.*\
 \
        `app.tabBars.buttons["Mehr"].tap()`\
        `app.staticTexts["Konten"].tap()`\
 \
        `app.buttons["add account"].tap()`\
 \
        `let tablesQuery = app.tables`\
        `tablesQuery.children(matching: .cell).element(boundBy: 0).staticTexts["neues Konto"].tap()`\
 \
        `tablesQuery.children(matching: .cell).element(boundBy: 0).staticTexts["neues Konto"].tap()`\
 \
        `app.buttons["edit account"].tap()`\
 \
        `let tablesQuery1 = app.tables`\
        `tablesQuery1.cells.staticTexts["Name"].tap()`\
 \
        `app.typeText(name)`\
        `app.navigationBars["Name"].buttons["Fertig"].tap()`\
 \
        `let tablesQuery2 = app.tables`\
        `tablesQuery2.cells.staticTexts["Bibliotheksausweisnummer..."].tap()`\
        `app.typeText(login)`\
        `app.navigationBars["ID"].buttons["Fertig"].tap()`\
 \
        `tablesQuery2.cells.staticTexts["Passwort"].tap()`\
        `app.typeText(password)`\
        `app.navigationBars["Passwort"].buttons["Fertig"].tap()`\
 \
        `let tablesQuery3 = app.tables`\
        `tablesQuery3.cells.staticTexts["Bibliothek"].tap()`\
        `tablesQuery3.cells.staticTexts[library].tap()`\
        `app.buttons[name].tap()`\
        `tablesQuery3.switches["Aktiviert"].tap()`\
 \
        `let exp = expectation(description: "wait for 3 seconds")`\
        `XCTWaiter().wait(for: [exp], timeout: 3)`\
 \
        `snapshot("AccountDetailsPortrait")`\
 \
        `app.navigationBars.buttons.element(boundBy: 0).tap()`}
 */
/*:
- Note:
    "This is too much text!"

 */
//: [Next](@next)
