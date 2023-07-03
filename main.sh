#!/bin/bash

# Define the output file name
output_file="instances.txt"

# Get the list of available regions
regions=$(aws ec2 describe-regions --query 'Regions[].RegionName' --output text)

# Iterate through each region
for region in $regions; do
    echo "Region: $region"

    # Get the instances in the current region
    instances=$(aws ec2 describe-instances --region $region --query 'Reservations[*].Instances[*].[InstanceId, State.Name, Placement.AvailabilityZone, PublicIpAddress, PrivateIpAddress]' --output table)
    
    # Display the instances for the current region and append to the output file
    echo "$instances" >> "$output_file"

    echo "---------------------"
done
