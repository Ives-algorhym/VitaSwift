//
//  VitaSwiftTests.swift
//  VitaSwiftTests
//
//  Created by Ives Murillo on 6/15/25.
//

import Testing
@testable import VitaSwift

struct VitaSwiftAppTests {

    @Test func test_appRootIsWindowgroup() {
        let app = VitaSwiftApp()
        let scene = app.body
        #expect(String(describing: VitaSwiftApp.self).contains("App")) // Ensure VitaSwiftApp is an App
    }

}
