**Setting up Terraform Logging and Plan Output**

1. Set `TF_LOG` for logging verbosity:
   ```bash
   export TF_LOG=TRACE  # or DEBUG, INFO, WARN, ERROR
   ```

2. Optionally, define `TF_LOG_PATH`:
   ```bash
   export TF_LOG_PATH=/path/to/logfile.log
   ```

3. Save Terraform plan to a file:
   ```bash
   terraform plan -out=terraformplan
   ```

4. Retrieve detailed logs and plan from file.

5. Apply Terraform plan from a file:
   ```bash
   terraform apply "terraformplan"
   ```

6. You can only apply this plan if the .tfstate file is unchanged and it does not require approval

7. You can use -refresh=false to prevent terraform from refreshing the state of the system when planning. 