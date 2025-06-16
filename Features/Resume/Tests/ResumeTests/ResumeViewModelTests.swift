//
//  File.swift
//  Resume
//
//  Created by Ives Murillo on 6/15/25.
//

@testable import Resume
import Testing

struct ResumeViewModelTests {
    @Test
    func initialState_hasExpectedTitle()  {
        let viewModel = ResumeViewModel()
        #expect(viewModel.title == "VitaSwift")
    }
}
