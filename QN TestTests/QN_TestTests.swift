//
//  QN_TestTests.swift
//  QN TestTests
//
//  Created by Matheus Rodrigues Araujo on 15/01/20.
//  Copyright © 2020 Curso IOS. All rights reserved.
//

import Quick
import Nimble
@testable import QN_Test

class QN_TestTests: QuickSpec {

    override func spec() {
        
        describe("InicialTableViewController"){
            var subject: InicialTableViewController!
            
            beforeEach {
                subject = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "TBCont") as? InicialTableViewController
                
                _ = subject.view
            }
            context("quando a view for carregada") {
                it("deve ter 6 animes") {
                    expect(subject.tableView.numberOfSections).to(equal(1))
                    expect(subject.tableView.numberOfRows(inSection: 0)).to(equal(6))
                }
            }
            
            context("quando a tableview for criada") {
                
                var cell : UITableViewCell!
                
                beforeEach {
                    cell = subject.tableView(subject.tableView, cellForRowAt: IndexPath(row: 0, section: 0))
                }
                it("a celula deve ter titulo e subtitulo") {
                    expect(cell.textLabel?.text).to(equal("Naruto"))
                    expect(cell.detailTextLabel?.text).to(equal("Battle Shounen"))
                    
                }
            }
            
        }
        
    }
    

}
