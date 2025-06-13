# 📦 Terraform CLI - Essential Commands

This documentation covers the main terminal (CLI) commands used in Terraform, with explanations and practical examples.

## 🔧 1. `terraform init`

Initializes the working directory containing `.tf` files and downloads necessary providers.

```bash
terraform init
```

**Example:**

```bash
terraform init -backend-config="backend.tfvars"
```

> Initializes with custom backend configuration.

---

## 📐 2. `terraform validate`

Validates the syntax of configuration files in the current directory.

```bash
terraform validate
```

**Example:**

```bash
terraform validate
```

> Ensures the structure of `.tf` files is correct before applying.

---

## 🧠 3. `terraform plan`

Creates an execution plan, showing what will be created, changed, or destroyed.

```bash
terraform plan
```

**Example:**

```bash
terraform plan -out=planfile.tfplan
```

> Generates and saves a plan for later use with `apply`.

---

## 🚀 4. `terraform apply`

Applies the changes to the environment according to the generated plan.

```bash
terraform apply
```

**Example:**

```bash
terraform apply planfile.tfplan
```

> Applies changes based on the saved plan.

---

## 🔄 5. `terraform refresh`

Updates the local state file with the real infrastructure values from the provider.

```bash
terraform refresh
```

> Syncs the state file with the real environment.

---

## 🧹 6. `terraform destroy`

Destroys all resources managed by Terraform.

```bash
terraform destroy
```

**Example:**

```bash
terraform destroy -auto-approve
```

> Destroys resources without interactive confirmation.

---

## 🧾 7. `terraform output`

Displays the output values defined in the Terraform code (`output "..."`).

```bash
terraform output
```

**Example:**

```bash
terraform output instance_ip
```

> Shows the IP of a created instance.

---

## 📄 8. `terraform show`

Displays the current state or the contents of a generated plan.

```bash
terraform show
```

**Example:**

```bash
terraform show planfile.tfplan
```

> Visualizes what will be applied according to the plan.

---

## 🗑️ 9. `terraform state`

Manually manages state (advanced usage).

```bash
terraform state list
```

**Example:**

```bash
terraform state show aws_instance.my_server
```

> Inspects the specific state of a resource.

---

## 🔍 10. `terraform providers`

Lists the providers used in the configuration.

```bash
terraform providers
```

> Useful for auditing external dependencies in the project.

---

## 💼 11. `terraform workspace`

Manages multiple workspaces (isolated environments such as dev/staging/prod).

```bash
terraform workspace list
```

**Example:**

```bash
terraform workspace new staging
terraform workspace select staging
```

> Creates and selects a workspace called `staging`.

---

## 📥 12. `terraform fmt`

Automatically formats `.tf` files to the standard style.

```bash
terraform fmt
```

> Keeps the code clean and consistent.

---

## 🧪 13. `terraform test` (Experimental)

Runs automated tests defined in `tests/` folders.

```bash
terraform test
```

> Experimental feature for validating behaviors via test blocks.

---

## 📚 References

- [Terraform CLI Docs](https://developer.hashicorp.com/terraform/cli)
- [Terraform Best Practices Guide](https://developer.hashicorp.com/terraform/tutorials)
