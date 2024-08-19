

### Postmortem Report: Apache2 Service Outage Due to Misconfigured Custom Response Header

#### Issue Summary:
- **Duration**: August 15, 2024, 2:00 PM to 3:30 PM (UTC)
- **Impact**: The web application experienced intermittent 500 Internal Server Errors for approximately 80% of users. Affected users were unable to access certain pages, leading to disrupted services and loss of functionality across the site.
- **Root Cause**: Misconfigured Apache2 response header directives caused unexpected behavior, leading to server crashes when handling requests.

#### Timeline:
- **2:00 PM**: Monitoring system detected a spike in 500 errors across multiple endpoints.
- **2:05 PM**: An engineer noticed high error rates in the logs and attempted to restart the Apache2 service.
- **2:10 PM**: Initial investigation focused on potential issues in the application code or database, but no anomalies were found.
- **2:20 PM**: A misleading assumption led to checking for excessive memory or CPU usage, which did not yield useful insights.
- **2:30 PM**: The investigation shifted to reviewing recent configuration changes in Apache2, particularly a custom response header addition.
- **2:40 PM**: The root cause was identified: a syntax error in the Apache2 configuration file related to the `X-Served-By` custom header.
- **2:45 PM**: The incident was escalated to the DevOps team for urgent resolution.
- **3:00 PM**: The configuration was corrected, and the Apache2 service was reloaded.
- **3:30 PM**: Normal operations resumed as the error rates dropped to zero, indicating full recovery.

#### Root Cause and Resolution:
The issue was caused by an incorrectly configured custom header directive in Apache2. The `X-Served-By` header was introduced to include the server hostname in responses. However, a syntax error in the configuration file resulted in Apache2 crashing when processing certain requests.

To resolve the issue, the syntax was corrected in the configuration file, and the Apache2 service was reloaded. This restored stable operation, as the custom header was properly implemented without causing crashes.

#### Corrective and Preventative Measures:
**Improvements and Fixes:**
- Implemented pre-deployment validation checks for Apache2 configuration files.
- Enhanced monitoring to detect sudden spikes in 500 errors.
- Improved documentation on adding custom headers and directives in Apache2.

**TODOs:**
1. Set up automated configuration linting to catch syntax errors before deployment.
2. Add detailed monitoring for Apache2 configuration changes, with alerts for potential issues.
3. Conduct regular code reviews focused on server configuration changes.
4. Schedule training sessions for engineers on best practices when modifying web server configuration
