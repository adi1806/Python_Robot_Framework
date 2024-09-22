Robot Framework Project
Project Description

This project is a test automation suite for the ParaBank application using Robot Framework and SeleniumLibrary. The tests are designed to validate various functionalities of the ParaBank application, including login and account overview.
Table of Contents

    Project Description
    Setup Instructions
    Usage
    Test Cases
    Keywords
    Resources
    Contributing
    License

Setup Instructions

Clone the repository:

git clone https://github.com/your-username/your-repository.git
cd your-repository

Install the required Python packages:

pip install -r requirements.txt

Ensure the ChromeDriver (or the corresponding driver for your browser) is in your PATH.

Execute tests:

robot --outputdir Reports  tests/test_parabank.robot

Prerequisites

    Python 3.x
    pip (Python package installer)
    Robot Framework
    SeleniumLibrary
    Google Chrome (or any other browser you want to use)
    ChromeDriver (or the corresponding driver for your browser)

Usage

    Define reusable keywords in Common/resources.robot.
    Add test cases in the tests/ directory.
    Manage test data in TestData/.

Running Tests

To run the tests and save the reports in the Reports directory, use the following command:

robot --outputdir Reports test_parabank.robot

