# AWS Orphan Resource Cleanup using GitHub Actions

## Overview

This project automates the detection and deletion of orphaned Amazon EBS volumes using GitHub Actions and AWS CLI.

## Problem Statement

Unused cloud resources continue to incur storage costs even after compute resources are deleted. This project automates the cleanup process to optimize cloud costs.

## Architecture

GitHub Actions
        │
        ▼
AWS IAM Authentication
        │
        ▼
AWS CLI
        │
        ▼
Detect Unattached EBS Volumes
        │
        ▼
Delete Orphaned Volumes

## Technologies

- AWS EC2
- Amazon EBS
- AWS CLI
- GitHub Actions
- IAM
- Bash
- YAML

## Workflow

1. Configure AWS credentials using GitHub Secrets
2. Execute GitHub Action
3. Detect orphaned EBS volumes
4. Delete unattached volumes
5. Display execution logs

## Repository Structure

