//
//  MessageThreadTests.swift
//  MessageBoardTests
//
//  Created by Andrew R Madsen on 9/13/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import XCTest
@testable import Message_Board

class MessageThreadTests: XCTestCase {
    
    //MARK: - Tests -
    
    func testThreadCreation() {
        
        let messageThreadController = MessageThreadController()
        
        messageThreadController.createMessageThread(with: "Random Thread", completion: {} )
        messageThreadController.createMessageThread(with: "Some other random thread", completion: {} )
        
        //This is because network calls take a second before the method adds the objects to the array
        usleep(7_000_000)
        
        let messageThreads = messageThreadController.messageThreads
        
        XCTAssertEqual(messageThreads.count, 2)
        
    }
    
}
