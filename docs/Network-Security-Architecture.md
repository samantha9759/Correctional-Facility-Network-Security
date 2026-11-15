# Correctional Facility Network Security Architecture

## 1. Design Objective

The proposed architecture uses network segmentation to separate administrative resources, facility operations, security systems, and IT management.

The goal is to reduce unauthorized access, limit the impact of compromised devices, and improve network visibility.

## 2. Proposed Network Zones

| Network Zone | Purpose | Security Objective |
|---|---|---|
| VLAN 10 - Administration | Administrative workstations and business applications | Restrict access to authorized staff |
| VLAN 20 - Facility Operations | General facility operational systems | Limit unnecessary communication |
| VLAN 30 - Restricted Systems | Sensitive facility infrastructure | Apply strict access controls |
| VLAN 40 - Video Surveillance | Video monitoring infrastructure | Isolate surveillance traffic |
| VLAN 50 - IT Management | Authorized IT administration | Restrict privileged management access |
| VLAN 60 - Guest and Vendor | Approved temporary external access | Prevent access to internal resources |

These are conceptual network zones, not real facility configurations.

## 3. Recommended Security Controls

### Network Segmentation
Separate systems according to their purpose and sensitivity. Deny unnecessary communication between network zones.

### Identity and Access Management
Require unique user accounts, Multi-Factor Authentication, and Role-Based Access Control.

### Endpoint Protection
Use supported operating systems, endpoint detection and response, and centralized security monitoring.

### Firewall Management
Apply restrictive firewall rules and review them periodically. Disable unnecessary services and ports.

### Logging and Monitoring
Collect authentication, endpoint, firewall, and network security events in a centralized monitoring platform.

### Backup and Recovery
Maintain protected backups and test restoration procedures to support recovery after a security incident.

## 4. Zero Trust Approach

The design follows Zero Trust principles:

- Never automatically trust a device or user based on network location.
- Verify identity before granting access.
- Grant only the permissions required for a user's role.
- Monitor access and investigate unusual activity.
- Reevaluate access when roles or responsibilities change.

## 5. Expected Benefits

- Reduced unauthorized access opportunities.
- Improved separation of sensitive systems.
- Better visibility into security events.
- Reduced risk of lateral movement.
- Improved incident response and recovery.

## 6. Scope Disclaimer

This is a hypothetical network architecture developed for cybersecurity education and professional portfolio use. It does not represent the network layout, equipment, addressing, or security configuration of an actual correctional facility.
