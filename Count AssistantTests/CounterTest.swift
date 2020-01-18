//
//  CounterTest.swift
//  Count AssistantTests
//
//  Created by Rodolphe Schnetzer on 17/01/2020.
//  Copyright © 2020 Rodolphe Schnetzer. All rights reserved.
//

import XCTest
@testable import Count_Assistant

class CounterTest: XCTestCase {

    func testGivenAssistantIsNul_WhenAddOne_ThenAssistantIsOne(){
        
        // Given
        let count = Counter()
        
        // When
        
        count.addAssistant()
        
        //Then
        XCTAssert(count.assistant == 1)
        
    }
    
    func testGivenAssistantIsOne_WhenDeleteOne_ThenAssistantisNull(){
        
        //Given
        let count = Counter()
        count.assistant = 1
        
        //When
        count.deleteAssistant()
        
        //Then
        XCTAssert(count.assistant == 0)
        
    }
    
    func testGivenAssistantIsNotNull_WhenResetAssistant_AssistantIsNull(){
        
        // Given
        let count = Counter()
        count.assistant = 10
        
        // When
        count.reset()
        
        //Then
        
        XCTAssert(count.assistant == 0)
        
        
    }

}
