### Steps to reproduce

- Add your own Cloudflare Account ID to the `main.tf`
- Add your own Cloudflare API token to the `providers.tf`
- Run `terraform apply` - Worker script will be deployed
- Change `hello-world.js` (just the console log is fine)
- Run `terraform apply` again

### Expected behaviour

It should notice the difference in content and upload the new file content with an update in place

### Actual behaviour

It recreates the worker, by destroying it and creating a new one

This is a problem as it destroys version hisory on the worker, it also can lead to downtime (although very short)

The `id` is marked as the field which is causing the replacement - although the id remains unchanged and cannot be set in the terraform resource