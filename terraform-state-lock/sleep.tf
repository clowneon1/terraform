resource "time_sleep" "wait_300_seconds" {
  create_duration = "300s"
}
# it knows that the lock is accquired by by some process with the help of file ".terraform.tfstate.lock.info" 
# run this first then do a terraform plan in same directory from another terminal.
# lock is accquired by the process which is currently working with the terraform state file.
