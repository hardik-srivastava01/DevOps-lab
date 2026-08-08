# SRE Troubleshooting Library

## Investigation Paths

| Issue | Symptoms | Investigation Path |
|------|----------|--------------------|
| Service Down | Connection Refused | Service → Port → Logs |
| 502 Bad Gateway | Backend Dead | Backend → Port → Logs |
| 503 Service Unavailable | Overload | Resources → Logs |
| 403 Forbidden | Permission Denied | Permissions → Config |
| 404 Not Found | Missing File | Config → File Path |
| SSL Error | HTTPS Failed | Certificate → Config |
| Port Already in Use | Start Failed | Port → Process |
| Config Syntax Error | Reload Failed | `nginx -t` → Logs |
| SSH Service Down | Connection Refused on port 22 | Network → SSH Service → Port 22 → Logs |
