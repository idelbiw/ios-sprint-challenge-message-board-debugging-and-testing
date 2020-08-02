//
//  Message_BoardUITests.swift
//  Message BoardUITests
//
//  Created by Spencer Curtis on 9/14/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import XCTest

class Message_BoardUITests: XCTestCase {
    
    //MARK: - Properties -
    
    var app = XCUIApplication()
    
    //MARK: - Methods -
    
    override func setUpWithError() throws {
        continueAfterFailure = false
        
        // NOTE: Keep this setup as is for UI Testing
        app.launchArguments = ["UITesting"]
        app.launch()
    }
    
    
    //MARK: - Tests -
    
    func testThreadTitleInDetailViewController() {
        
        app.tables.textFields["Create a new thread:"].tap()
        app.keys["t"].tap()
        app.keys["e"].tap()
        app.keys["s"].tap()
        app.keys["t"].tap()
        app.buttons["Return"].tap()
        app.tables.staticTexts["test"].tap()
        
        XCTAssertEqual(app.navigationBars["test"].staticTexts["test"].label, "test")
        
    }
    
    func testTableViewRealoadDataWhenAddingThreads() {
        
        app.tables.textFields["Create a new thread:"].tap()
        app.keys["t"].tap()
        app.keys["e"].tap()
        app.keys["s"].tap()
        app.keys["t"].tap()
        app.buttons["Return"].tap()
        app.tables.staticTexts["test"].tap()
        
        let createdCellLabel = app.tables.cells.staticTexts["test"].label
        XCTAssertEqual(createdCellLabel, "test")
        
    }
    
    func testCancelMessgaeButton() {
        
        app.tables.textFields["Create a new thread:"].tap()
        app.keys["t"].tap()
        app.keys["e"].tap()
        app.keys["s"].tap()
        app.keys["t"].tap()
        app.buttons["Return"].tap()
        app.tables.staticTexts["test"].tap()
        app.navigationBars["test"].buttons["Add"].tap()
        app.navigationBars["New Message"].buttons["Cancel"].tap()
        
    }
    
    
    
} //End of class
