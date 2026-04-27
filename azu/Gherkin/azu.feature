Feature: Azure Folder Implementation and Organization

Background: Given an Azure folder, what needs to be saved and written here?

Scenario

Scenario: I am writing things in Azure Cloud Shell
    Given that if I am writing a script in Azure Bash,
    Then a folder labelled 'azbash' should be created
    But if the script is written in Azure PowerShell,
    Then a folder labelled 'azpwsh' should be created
    And those folder shall be placed in a folder called 'CloudShell'

Scenario: I am automating the creation of Virtual Machines and other Resources in Azure
    Given I require VMs and Resources to be created in Azure
    Then I would need to automate the creation of them using Bicep
    Then a folder labelled 'bicep' would be created.

Scenario: I am preparing to write a feature to plan out and scope work
    Given I need to plan and scope work out
    And its extensive use in Azure DevOps
    Then I would need to write Gherkin to plan the work
    Then a folder labeled 'gherkin' would be created  
  Scenario Outline: Progress of Features
    Given features that have been started
    Then place in the 'in-progress' subfolder
    Given features that have been completed but need review
    Then place in the 'needs-approval' subfolder
    Given features that have been fully implemented
    Then place in the 'work-completed' subfolder

Scenario: I need to automate the creation of users or alter user information
    Given I need to potentially create, alter or delete user data
    Then I would need to use the Graph API
    And a folder labeled 'graph' would be created to save presaved queries and .http files.

Scenario: I need to presave my KQL queries
    Given I may need to save my KQL queries not on the Server
    And I want them somewhere version-controlled
    Then a folder labeled 'kql' would be created.

