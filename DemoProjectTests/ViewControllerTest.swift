//
//  ViewControllerTest.swift
//  DemoProject
//
//  Created by yishain chen on 2017/4/24.
//  Copyright © 2017年 AppWorkout. All rights reserved.
//

import XCTest
@testable import DemoProject

class ViewControllerTests: XCTestCase {
    
    
    override func setUp() {
        super.setUp()
        
        
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func test_TableViewIsNotNilAferViewDidLoad() {
        let storyboard = UIStoryboard(name:"Main", bundle:nil)
        let sut = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        _ = sut.view
        XCTAssertNotNil(sut.tableView, "hihi")
    }
    
    func test_shouldSetDataProvider () {
        let storyboard = UIStoryboard(name:"Main", bundle:nil)
        let sut = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        _ = sut.view
        XCTAssertNotNil(sut.tableView!.dataSource)
        XCTAssertTrue(sut.tableView?.dataSource is ViewController)
        
    }
    
}
