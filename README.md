# Correctional Facility Network Security

## Project Overview

This project presents a hypothetical cybersecurity modernization plan for a correctional facility environment.

The goal is to identify security weaknesses, design a segmented network architecture, recommend security controls, and develop a practical modernization budget.

This project combines cybersecurity concepts with operational experience in corrections.

## Project Objectives

- Identify potential network and endpoint vulnerabilities.
- Develop a segmented network security architecture.
- Recommend identity and access management controls.
- Map security recommendations to recognized frameworks.
- Evaluate cybersecurity threats and operational risks.
- Develop a proposed $50,000 modernization budget.
- Perform a hands-on Windows security assessment using PowerShell.

## Architecture Overview

The proposed design separates network resources into six conceptual security zones:

| Network Zone | Purpose |
|---|---|
| VLAN 10 | Administration |
| VLAN 20 | Facility Operations |
| VLAN 30 | Restricted Systems |
| VLAN 40 | Video Surveillance |
| VLAN 50 | IT Management |
| VLAN 60 | Guest and Vendor Access |

See the [Network Architecture Diagram](diagrams/Network-Architecture.md).

## Hands-On Windows Security Assessment

This project also includes a read-only PowerShell assessment script that collects security configuration information from a Windows endpoint.

The assessment checks:

- Operating system information
- Windows Firewall profiles
- Microsoft Defender status
- Drive encryption status
- Local administrator group membership
- Windows audit policy
- Windows Update service status

### Assessment Files

- [PowerShell Assessment Script](scripts/Invoke-CorrectionalSecurityAssessment.ps1)
- [Consolidated Security Assessment](reports/Consolidated-Security-Assessment.md)
- [Patch Management Finding](reports/Patch-Management-Finding.md)
- [Account Security Finding](reports/Account-Security-Finding.md)
- [Audit Policy Finding](reports/Audit-Policy-Finding.md)
- [Security Findings Register](reports/Security-Findings-Register.csv)
- [Sanitized Assessment Evidence](evidence/Windows-Security-Assessment.csv)

The script is designed for read-only assessment and exports findings to CSV for documentation and review.

## Project Documentation

### Network Design
- [Network Security Architecture](docs/Network-Security-Architecture.md)
- [Network Architecture Diagram](diagrams/Network-Architecture.md)

### Risk Assessment
- [Vulnerability Assessment](risk-assessment/Vulnerability-Assessment.md)
- [Threat Assessment](risk-assessment/Threat-Assessment.md)

### Security Controls
- [Security Controls](security-controls/Security-Controls.md)

### Compliance and Frameworks
- [Compliance Framework Mapping](compliance/Compliance-Framework-Mapping.md)

### Budget and Planning
- [Modernization Budget](budget/Modernization-Budget.md)
- [Project Planning PDF](docs/Correctional_Facility_Network_Security_GitHub_Plan.pdf)

## Frameworks Referenced

- NIST Cybersecurity Framework 2.0
- NIST SP 800-53
- NIST SP 800-207
- CJIS Security Policy, where applicable
- HIPAA, where applicable

## Proposed Security Improvements

- Network segmentation
- Multi-Factor Authentication
- Role-Based Access Control
- Least-privilege access
- Endpoint detection and response
- Centralized security monitoring
- Firewall policy improvements
- Backup and disaster recovery planning

## Skills Demonstrated

- PowerShell scripting
- Windows security assessment
- Endpoint security review
- Network security architecture
- Vulnerability assessment
- Cybersecurity risk analysis
- Identity and access management
- Security control selection
- Compliance framework mapping
- Technical documentation
- Security project planning

## Project Scope and Disclaimer

This is a hypothetical educational project combined with a personal Windows endpoint assessment. It does not represent the actual network, equipment, security procedures, or configurations of any correctional facility.

The network zones and recommendations are conceptual. No real facility information is included.

The endpoint assessment is a point-in-time review and is not a penetration test or compliance certification.

## Author

Cybersecurity and Information Assurance

GitHub: [samantha9759](https://github.com/samantha9759)


