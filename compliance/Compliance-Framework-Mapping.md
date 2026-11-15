# Cybersecurity Compliance and Framework Mapping

## Purpose

This document maps proposed security controls for the fictional correctional facility environment to recognized cybersecurity frameworks.

The mappings are intended to demonstrate security planning and framework awareness. They are not a formal compliance assessment or certification.

## Frameworks Considered

### NIST Cybersecurity Framework 2.0
Provides guidance for managing cybersecurity risk through six functions:

- Govern
- Identify
- Protect
- Detect
- Respond
- Recover

### NIST SP 800-53
Provides a catalog of security and privacy controls for information systems and organizations.

### NIST SP 800-207
Defines Zero Trust Architecture principles, including continuous verification and least-privilege access.

### CJIS Security Policy
May apply when an organization accesses or handles Criminal Justice Information (CJI) through systems subject to CJIS requirements. Applicability must be determined based on the organization's role and information access.

### HIPAA
May apply when the organization is a covered entity or business associate handling protected health information under HIPAA. It should not be assumed to apply to every correctional facility.

## Security Control Mapping

| Proposed Control | NIST CSF 2.0 | NIST SP 800-53 Control Family |
|---|---|---|
| Asset inventory | Identify | CM - Configuration Management |
| Multi-Factor Authentication | Protect | IA - Identification and Authentication |
| Role-Based Access Control | Protect | AC - Access Control |
| Network segmentation | Protect | SC - System and Communications Protection |
| Centralized security logging | Detect | AU - Audit and Accountability |
| Endpoint monitoring | Detect | SI - System and Information Integrity |
| Incident response procedures | Respond | IR - Incident Response |
| Backup and recovery testing | Recover | CP - Contingency Planning |
| Security risk assessment | Govern / Identify | RA - Risk Assessment |

## Zero Trust Alignment

The proposed architecture supports Zero Trust principles through:

- Identity verification.
- Least-privilege access.
- Device and system monitoring.
- Segmentation of network resources.
- Continuous evaluation of access.

## Compliance Considerations

Before implementing a compliance program, an organization should determine:

1. What sensitive information it stores or processes.
2. Whether CJIS requirements apply.
3. Whether HIPAA requirements apply.
4. Which contractual, regulatory, and organizational requirements govern its systems.
5. Which controls require documented evidence.

## Conclusion

Framework mapping helps organizations connect security improvements to recognized industry guidance.

The proposed architecture uses NIST guidance as a foundation while identifying CJIS and HIPAA as conditional considerations rather than universal requirements.

## Scope Disclaimer

This is an educational framework mapping for a fictional correctional facility environment. It does not establish regulatory compliance, certification, or an audit result.
