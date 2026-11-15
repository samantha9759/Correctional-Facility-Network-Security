# Proposed Correctional Facility Network Architecture

```mermaid
flowchart TD
    A["Internet / External Connections"] --> B["Next-Generation Firewall"]
    B --> C["Core Network Infrastructure"]

    C --> D["VLAN 10 - Administration"]
    C --> E["VLAN 20 - Facility Operations"]
    C --> F["VLAN 30 - Restricted Systems"]
    C --> G["VLAN 40 - Video Surveillance"]
    C --> H["VLAN 50 - IT Management"]
    C --> I["VLAN 60 - Guest and Vendor"]

    H --> J["Centralized Security Monitoring"]
    D --> K["Identity and Access Management"]
    E --> L["Endpoint Protection"]
    F --> M["Restricted Access Controls"]
    G --> N["Isolated Surveillance Network"]

    J --> O["Security Alerts and Incident Response"]
