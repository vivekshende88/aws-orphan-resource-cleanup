# AWS Orphan Resource Cleanup using GitHub Actions

Automated cloud resource cleanup solution that identifies and removes orphaned Amazon EBS volumes using GitHub Actions and AWS CLI. The project demonstrates DevOps automation, secure AWS authentication, and cloud cost optimization through Infrastructure as Code principles.

---

## Overview

Orphaned cloud resources, such as unattached Amazon EBS volumes, continue to consume storage and increase cloud costs even after the associated compute resources are removed. This project automates the identification and cleanup of such resources using a GitHub Actions workflow.

---

## Key Features

- Automated detection of unattached Amazon EBS volumes
- Secure AWS authentication using IAM and GitHub Secrets
- GitHub Actions based CI/CD workflow
- AWS CLI integration for resource management
- Automated cleanup of orphaned resources
- Cloud cost optimization through infrastructure automation

---

## Technology Stack

- Amazon Web Services (AWS)
- Amazon EC2
- Amazon EBS
- AWS CLI
- AWS IAM
- GitHub Actions
- GitHub Secrets
- Bash
- YAML

---

## Workflow

1. Store AWS credentials securely using GitHub Secrets.
2. Trigger the GitHub Actions workflow.
3. Authenticate with AWS using IAM credentials.
4. Identify unattached Amazon EBS volumes.
5. Delete orphaned resources automatically.
6. Display execution logs for verification.

---

## Project Structure

```text
aws-orphan-resource-cleanup/
│
├── .github/
│   └── workflows/
│       └── cleanup.yml
│
├── scripts/
│   └── cleanup.sh
│
├── images/
│
└── README.md
```

---

## How Orphan Resources Are Identified

An Amazon EBS volume is considered orphaned when:

- The volume state is **Available**
- The volume is **not attached** to any EC2 instance

The workflow uses the following AWS CLI command:

```bash
aws ec2 describe-volumes \
  --filters Name=status,Values=available
```

---

## Security

- IAM user authentication
- GitHub Secrets for secure credential storage
- No AWS credentials stored within the repository

---

## Future Enhancements

- Cleanup of unused Elastic IPs
- Cleanup of orphaned EBS snapshots
- Cleanup of unused Security Groups
- Scheduled execution using cron
- Email or Slack notifications
- Cleanup reports and logging

---

## Repository Contents

The repository includes:

- GitHub Actions workflow
- Cleanup automation script
- Project implementation screenshots
- Project documentation

---

## Author

**Vivek Shende**

- LinkedIn: https://www.linkedin.com/in/vivekshende88
- GitHub: https://github.com/vivekshende88
