# AWS Resource Listing Script

A simple and interactive Bash script to **list AWS resources** used by a particular AWS user in a specific region.  
This script uses the AWS CLI to fetch and display information about AWS services such as EC2, S3, RDS, Lambda, etc.

---

## 📜 Features

- Checks for required input arguments.
- Verifies AWS CLI installation and configuration.
- Supports multiple AWS services (see full list below).
- Lists resources in the specified AWS region.
- Provides clean and informative output.

---

## ✅ Prerequisites

- **AWS CLI v2** installed and configured on your system.
- Valid AWS credentials configured using `aws configure`.
- Execution permissions on the script file.

---

## 🔧 Supported AWS Services

The script currently supports the following AWS services:

1. EC2
2. RDS
3. S3
4. CloudFront
5. VPC
6. IAM
7. Route53
8. CloudWatch
9. CloudFormation
10. Lambda
11. SNS
12. SQS
13. DynamoDB
14. EBS

---

## 🚀 Usage

```bash
./aws_resource_list.sh <aws_region> <aws_service>
