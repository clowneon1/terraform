Sure, here's a simple README with command blocks for each Terraform state management command:

---

# Terraform State Management Commands

This README provides an overview of commands for managing Terraform state.

## List

The `list` command is used to list resources within the Terraform state file.

```bash
terraform state list
```

## Move (mv)

The `mv` command is used to move an item within the Terraform state.

```bash
terraform state mv <SOURCE> <DESTINATION>
```

## Pull

The `pull` command is used to manually download and output the state from remote state.

```bash
terraform state pull
```

## Push

The `push` command is used to manually upload a local state file to remote state.

```bash
terraform state push
```

## Remove (rm)

The `rm` command is used to remove items from the Terraform state.

```bash
terraform state rm <RESOURCE_NAME>
```

## Show

The `show` command is used to show the attributes of a single resource in the state.

```bash
terraform state show <RESOURCE_NAME>
```

---

Feel free to customize this README according to your project's specific needs.