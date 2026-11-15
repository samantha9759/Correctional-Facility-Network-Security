# Windows Audit Policy Assessment

## Finding
Windows Security Event Auditing Coverage

## Severity
Medium - Logging Coverage Improvement Recommended

## Existing Audit Coverage
- Logon success and failure
- Logoff success
- Account lockout
- Special logon
- System integrity changes
- User account management
- Security group management
- Audit policy changes

## Identified Logging Gaps
- Process creation auditing is disabled.
- File system auditing is disabled.
- Removable storage auditing is disabled.
- File share auditing is disabled.
- Sensitive privilege use auditing is disabled.
- Credential validation auditing is disabled.
- Directory service change auditing is disabled.

## Security Analysis
The current audit policy captures several authentication and account-management events. However, limited process, object-access, and removable-storage auditing may reduce visibility into certain security incidents.

## Recommendations
1. Evaluate process creation auditing, including command-line logging where appropriate.
2. Enable removable-storage auditing where organizational policy requires it.
3. Configure file-system auditing for sensitive resources.
4. Review privilege-use auditing requirements.
5. Centralize security logs and establish retention requirements.
6. Test audit policies to verify that expected events are generated.

## Assessment Limitation
This review records the configured audit policy. It does not establish whether individual events are being forwarded, retained, or monitored by a SIEM.
