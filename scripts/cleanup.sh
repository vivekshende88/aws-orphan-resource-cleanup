#!/bin/bash

echo "==============================="
echo "AWS Orphan Resource Cleanup"
echo "==============================="

echo ""
echo "Searching for unattached EBS volumes..."

volumes=$(aws ec2 describe-volumes     --filters Name=status,Values=available     --query "Volumes[*].VolumeId"     --output text)

if [ -z "$volumes" ]; then
    echo "No orphan EBS volumes found."
else
    for volume in $volumes
    do
        echo "Deleting Volume: $volume"

        aws ec2 delete-volume             --volume-id $volume

        echo "Deleted $volume"
    done
fi

echo ""
echo "Cleanup completed."
