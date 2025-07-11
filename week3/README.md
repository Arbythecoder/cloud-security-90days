# Week 3
Perfect! Here's your full beginner-friendly `week3/README.md` for **IAM + Terraform on AWS** — written **as if you're teaching absolute beginners**:

---

### ✅ Save this as: `week3/README.md`

````md
# 🌩️ Week 3 – IAM + Terraform on AWS

## �� Goal:
This week, I learned how to manage cloud users (IAM) and infrastructure using **Terraform**. Instead of manually clicking around AWS, I used code to create an IAM user and group. This is the start of becoming **Cloud DevOps smart**!

---

## 📚 Concepts I Learned:

### ☁️ IAM (Identity and Access Management)
IAM is AWS’s system for controlling **who can access what**.

- Users = actual people or apps
- Groups = a set of users (like “Admins”)
- Policies = rules about what they can do

### ⚙️ Terraform
Terraform lets us define cloud infrastructure as **code**, so we can:

- Reuse the same config easily
- Track changes (just like Git)
- Automate setup instead of clicking in AWS Console

---

## 🔨 Files I Used:

### `main.tf` – Main Blueprint
```hcl
provider "aws" {
  region = var.aws_region
}

resource "aws_iam_user" "cloud_user" {
  name = "clouduser"
}

resource "aws_iam_group" "cloud_group" {
  name = "cloudadmins"
}

resource "aws_iam_user_group_membership" "group_membership" {
  user = aws_iam_user.cloud_user.name
  groups = [aws_iam_group.cloud_group.name]
}
````

---

### `variables.tf` – Dynamic Inputs

```hcl
variable "aws_region" {
  description = "The AWS region to deploy into"
  default     = "us-east-1"
}
```

---

### `outputs.tf` – Show After Apply

```hcl
output "iam_user_name" {
  value = aws_iam_user.cloud_user.name
}
```

---

## 🧪 What I Practiced:

| Day   | What I Did                                        |
| ----- | ------------------------------------------------- |
| Day 1 | Learned IAM basics + what Terraform is            |
| Day 2 | Installed Terraform locally                       |
| Day 3 | Wrote main.tf to create IAM user + group          |
| Day 4 | Added outputs.tf and variables.tf                 |
| Day 5 | Ran `terraform init`, `plan`, and `apply` locally |

---

## ✅ How to Run It:

> ⚠️ You need an AWS account and your access keys configured with `aws configure`.

```bash
terraform init      # Set up the Terraform project
terraform plan      # Show what Terraform will do
terraform apply     # Actually create IAM user and group
```

---

## 🧠 What I Learned:

* How to write infrastructure as code using `.tf` files
* What IAM users, groups, and permissions are
* How to use `terraform init`, `plan`, and `apply`
* How automation helps reduce cloud mistakes

---

## 📸 Screenshots & Videos

All screenshots and short screen recordings for this week are in the `/assets` folder.

---

## 🔗 Helpful Resources:

* [Terraform AWS Provider Docs](https://registry.terraform.io/providers/hashicorp/aws/latest/docs)
* [Learn Terraform Basics](https://developer.hashicorp.com/terraform/tutorials/aws-get-started)
* [AWS IAM Documentation](https://docs.aws.amazon.com/IAM/latest/UserGuide/introduction.html)
* [How to Configure AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-quickstart.html)

---

> 👩🏽‍💻 **Follow along with me on this journey!**
> More labs, more videos, and more beginner-friendly security content coming weekly.


