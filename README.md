# AWS Orphan Resource Cleanup

GitHub Actions pipeline that authenticates to AWS using IAM credentials stored as GitHub Secrets and deletes unattached EBS volumes.

## GitHub Secrets
- AWS_ACCESS_KEY_ID
- AWS_SECRET_ACCESS_KEY
- AWS_REGION

Trigger manually from the Actions tab.
