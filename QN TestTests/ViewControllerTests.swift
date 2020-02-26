//
//  ViewControllerTests.swift
//  QN TestTests
//
//  Created by Matheus Rodrigues Araujo on 15/01/20.
//  Copyright © 2020 Curso IOS. All rights reserved.
//

import Quick
import Nimble

@testable import QN_Test

class ViewControllerTests : QuickSpec{
    
    override func spec() {
        
        describe("View Controller") {
            var subject:SecondViewController!
            
            beforeEach {
                subject = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "detCont") as? SecondViewController
                _ = subject.view
            }
            context("quando a view é carregada") {
                it("label deve aparecer"){
                    expect(subject.label.frame).to(equal(CGRect(x: 100, y: 100, width: 120, height: 30)))
                }
            }
            
        }
        
    }
}
