#import "@preview/tufte-memo:0.1.2": *
#show: template.with(
  title: [Code Review Guidelines ],
  shorttitle: [Code Review Guidelines],
  subtitle: [for GUI-based Testing],
  authors: (
    (
      name: "Andreas Bauer",
      organization: "Blekinge Institute of Technology",
      email: "andreas.bauer@bth.se"
    ),
  ),
  document-number: [Version 0.2.0],
  abstract: [
This document contains actionable advice on improving the code review process of GUI-based tests.
The recommendations are based on an interview study with testers from different companies. More
information is provided in the study.
This document contains two types of recommendations:
(1) information that the tester should provide during a code review and
(2) key aspects that the reviewer should consider during the code review.
],
  toc: true,
)

#let colorTeal = rgb("#99f6e4")
#let colorBlue = rgb("#bfdbfe")
#let colorGreen = rgb("#bbf7d0")
#let colorPurple = rgb("#e9d5ff")
#set par(
  first-line-indent: 0pt,
  justify: true,
)


#let noteIcon(imagePath, circleColor) = {
  note([
    #figure(
      circle(fill: circleColor, width: 30%)[
        #image(imagePath, width: 120%)
      ]
    )
  ],
  dy:-0.2in,
  numbered:false)
}

#pagebreak()
= Provide information during code review

== Provide context information
#noteIcon("./figures/psychology.svg", colorTeal)
Testers should provide information about the rationale behind proposed test cases, providing a clear explanation of why a particular change is necessary.
This rationale should address the following elements:

- _Purpose of the test cases_: Clearly define the objectives of the test case and its intended contribution to the overall system. Specify the feature requirements it aims to validate and describe the overarching context in which the test case operates.

- _Big picture alignment_: Explain how the test case contributes to achieving the system’s goals, ensuring reviewers can evaluate its alignment with the project’s overall design and objectives.

Further, testers should also provide the following supplementary details:

- _Cross-file dependencies_: If the test case depends on files or components not included in the immediate code review, explicitly outline these relationships.

- _Impact assessment_: Highlight areas where the change might introduce vulnerabilities or performance implications.

- _Edge case coverage_: Identify specific edge cases the test case addresses. This ensures the test suite robustly handles unusual or extreme scenarios.

- _Design and architectural insights_: For complex changes, provide a summary of relevant design or architectural decisions. Consider providing a high-level overview to clarify how the test cases integrate with existing infrastructure.

- _Review prioritization_: When a change consists of many files, prioritize them based on their relevance and criticality to the change. This helps reviewers focus on the most impactful components and streamlines the review process.

== Provide performance and coverage metrics
#noteIcon("./figures/finance.svg", colorTeal)
- _Determine efficiency_: Provide metrics that indicate the execution time of test cases.

- _Determine effectiveness_: Provide metrics that indicate the test coverage.

These metrics should ideally be automated, allowing for consistent and reliable data that can be easily referenced during the review.

== Provide information about used test data
#noteIcon("./figures/data_table.svg", colorTeal)
- _Selected test data_: Provide information about the test data set (or subset) used for the test case under review.
This helps reviewers assess whether the selected data is appropriate for the test case’s purpose and suitable for the specific test environment.

== Provide logging information of tests
#noteIcon("./figures/terminal.svg", colorTeal)
- _Log files_: If log files from test executions are available, provide access to them during the code review.
Logs provide valuable insights into the execution process and can help identify issues that may not be immediately apparent from the code alone. In general, enhancing logging practices during testing can facilitate deeper analysis and more effective code reviews.

#pagebreak()
= Aspect to consider during the review

== Conformity against requirements
#noteIcon("./figures/assignment.svg", colorPurple)
Ensure the changes in test cases are aligned with requirements and test specifications so that changes are not implemented or tested the "wrong thing".

== Test Robustness
#noteIcon("./figures/shield.svg", colorPurple)
Reviewers should look for locators that could reduce the robustness of the tests, such as overly simplistic XPath locators that are prone to break with minor changes in the user interface. Encouraging the use of more stable and resilient locators, such as CSS selectors or custom attributes designed for testing, can help improve the longevity and reliability of the tests.

== Test Maintenance
#noteIcon("./figures/handyman.svg", colorPurple)
Reviewers should evaluate whether test cases are still relevant and aligned with the current requirements of the project due to changes to the system under test or overall testing strategy. Test cases that are not relevant should be removed from the code repository.

== Adherence to design principles and patterns
#noteIcon("./figures/engineering.svg", colorPurple)
Test cases, like production code, should adhere to recognized design principles and patterns to ensure clarity, maintainability, and reliability. Key considerations include:

- _Focus and simplicity_: Test cases should be concise and target a single functionality or behavior. Avoid bundling multiple responsibilities into a single test case to maintain focus and readability.

- _Separation of concerns_: Ensure test logic is clearly separated from setup, execution, and verification stages. This modularity facilitates reuse and reduces complexity.

- _Documentation_: Provide comprehensive yet succinct documentation within the test code. This includes comments and annotations that clarify the purpose, scope, and methodology of the test cases, aiding future reviewers and maintainers.

- _Testing techniques_: Ensure the appropriate techniques are used for testing and exception handling.

== Managing Complexity
#noteIcon("./figures/cognition.svg", colorPurple)
Excessive complexity in test cases and testing frameworks should be avoided, as it can hinder maintainability and scalability. Complex solutions increase cognitive load, making it more challenging for future developers/testers to understand, modify, or extend the tests. During the review process, consider the following:

- _Simplification opportunities_: Identify areas where complex logic or structures can be simplified without compromising functionality.

- _Readability_: Ensure test cases are written in a way that is easy to follow, minimizing ambiguity. This includes following coding styles and naming conventions.

- _Scalability_: Evaluate whether the proposed design can accommodate future changes with minimal disruption.

== Levels of Abstraction
#noteIcon("./figures/flex_direction.svg", colorPurple)
Reviewers should ensure that different levels of abstraction are not mixed within a single test case. A consistent level of abstraction helps maintain clarity and simplicity in test code. For example, high-level abstractions like page objects should not be combined with low-level details such as direct DOM manipulations within the same test case.

== Consideration of Git Commit History
#noteIcon("./figures/history.svg", colorPurple)
Understanding the development history of a test case can provide valuable insights into its evolution and purpose. Reviewers should consider the git history, including commits and their messages, to understand how the test case was developed and why certain decisions were made.

= Disclaimer

== License

This document is licensed under a #link("https://creativecommons.org/licenses/by-sa/4.0/",[CC BY-SA 4.0])
International License#note[
You are free to share and adapt this document, provided you give appropriate credit and indicate if changes were made. If you remix, transform, or build upon this document, you must distribute your contributions under the same license as the original.
].
