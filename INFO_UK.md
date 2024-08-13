Tools4ever’s identity & access management (IAM) solution HelloID integrates with a wide range of source and target systems. PowerShell plays an indispensable role in achieving these integrations. This article details how HelloID utilises PowerShell, the role this solution plays in the connectors we offer, and the benefits of using PowerShell.

## What is PowerShell?

PowerShell is a cross-platform solution for task automation and configuration management. It consists of a command-line shell, a scripting language and a configuration management framework. Developed by Microsoft, PowerShell is commonly used as a scripting language for automating the management of systems.

Many IT professionals are familiar with PowerShell due to its capabilities for automating various tasks. PowerShell is not limited to the Microsoft infrastructure and works cross-platform. PowerShell Core 7 and higher are suitable for Windows, macOS and Linux.

## Simple integration with GitHub

PowerShell enables the creation of various integrations between systems. However, working with PowerShell requires the right knowledge, which many functional administrators of HelloID may lack. This makes creating these integrations a challenge.

Tools4ever addresses this challenge by offering a large number of connectors for free via our GitHub repository. Our PowerShell V2 connectors, in particular, make it very easy to create integrations. For instance, you can configure the mapping of information fields through a graphical interface.

We are also working on a GitHub integration for target systems, which further simplifies the management of target systems. Thanks to this integration, administrators can add, manage or remove a new target system with the push of a button. 

## How does HelloID use PowerShell?

HelloID uses PowerShell in both its source and target connectors. Depending on the requirements of the system HelloID is integrating with, the version of PowerShell we use may vary. For our cloud agents, we use PowerShell Core 7 or higher, while for our on-premises HelloID agents, we use PowerShell 5.1.

Although PowerShell can automate various functionalities in HelloID, not all capabilities of PowerShell are available in the IAM solution. This is a deliberate choice. For example, support for ‘Invoke-Expression’ is not provided for security reasons.

To ensure transparency and simplicity, HelloID uses performance limits. Target systems in HelloID encounter different account lifecycle events: creating, activating, updating, deactivating and deleting accounts. Each action within this 'circle' must be completed within 30 seconds. For changes to source systems, all mutations must be completed within 60 minutes.

## Benefits of using HelloID with PowerShell

HelloID offers very broad integration capabilities with various systems. When creating these integrations, we depend on the possibilities provided by a supplier. However, with PowerShell, we can support any conceivable option. We can work with APIs, web services, SQL databases and CSV files, to name just a few options.

The physical location where systems run is also not a barrier. Is it a cloud-based system? HelloID creates a cloud-to-cloud connection using a cloud agent based on PowerShell Core 7 or higher. Is it an on-premises system running on your infrastructure? We can create an integration using the on-premises HelloID agent based on PowerShell 5.1.

HelloID offers approximately 200 connectors in total. Are you curious about the possibilities these connectors offer? Consult an overview of all connectors here.
