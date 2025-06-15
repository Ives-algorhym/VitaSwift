# VitaSwift Contribution Guidelines

Welcome to the VitaSwift project! To ensure code quality, maintainability, and a productive team environment, please follow these guidelines for all contributions.

## 1. Agile, Issue-Driven Workflow

- **All work starts with an Issue:**  
  Open a GitHub Issue for any new feature, bugfix, or refactor. Clearly describe the scope, intent, and acceptance criteria.
- **Discuss and prioritize:**  
  Collaborate with the team on the issue to clarify requirements before implementation.
- **One issue, one branch, one PR:**  
  Each branch and pull request must address a single issue for clarity and ease of review.
- **Reference everything:**  
  Branches and PRs must reference the related issue (e.g., “Closes #123”).

## 2. Branching & Pull Requests

- **Branch naming:**  
  Use the format `feature/123-description`, `bugfix/456-description`, etc., where the number matches the GitHub Issue.
- **Draft PRs encouraged:**  
  Open a draft PR early to gather feedback as you work.
- **Small, focused changes:**  
  Keep PRs atomic and avoid bundling unrelated changes.
- **CI/CD must pass:**  
  All PRs must pass tests and lint checks before merging.
- **Peer review required:**  
  Every PR needs review and approval from at least one team member.

## 3. Test-Driven Development (TDD)

- **Write tests first:**  
  Begin with failing tests that describe the required behavior or fix.
- **Meaningful coverage:**  
  Prioritize coverage for core logic, edge cases, and integration points.
- **Use XCTest:**  
  Standardize on XCTest for all tests.
- **No untested code:**  
  Never merge code unless it is covered by automated tests and all tests pass.

## 4. Clean Architecture Principles

- **Separation of Concerns:**  
  Maintain strict boundaries between UI, business logic, and data layers.
- **Dependency injection & protocols:**  
  Decouple modules to enhance testability and maintainability.
- **SOLID, DRY, YAGNI:**  
  Adhere to core software design principles.
- **Update ADRs:**  
  Use Architecture Decision Records for significant architectural changes.

## 5. Apple Swift Code Style

- **Follow [Swift API Design Guidelines](https://swift.org/documentation/api-design-guidelines/)**
- **Enforce SwiftLint:**  
  All code must pass SwiftLint checks before merging.
- **No force unwraps:**  
  Avoid `!` unless absolutely necessary and reviewed.
- **Consistent formatting:**  
  Use camelCase, 4-space indentation, and document public APIs and complex logic.

## 6. Team Productivity & Code Ownership

- **Communicate proactively:**  
  Use Issues, PRs, and Discussions to ask questions, clarify intent, and share blockers.
- **Focus:**  
  Work on one issue at a time for deep work and fewer mistakes.
- **Respect code ownership:**  
  Coordinate significant changes with maintainers of affected modules.
- **Continuous learning:**  
  Share insights and best practices in retrospectives or documentation.

---

## Summary Workflow

1. Open a GitHub Issue for your work.
2. Create a branch named after the issue.
3. Write tests before implementing code.
4. Develop following Clean Architecture and code style.
5. Ensure all tests and lint checks pass.
6. Open a draft PR and request feedback.
7. Iterate on feedback, get review and approval, and merge when green.

---

By following these guidelines, we ensure VitaSwift remains high-quality, maintainable, and enjoyable for everyone. If you have questions or suggestions, raise them in

