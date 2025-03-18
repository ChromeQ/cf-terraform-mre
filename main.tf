resource "cloudflare_workers_script" "worker_script" {
  account_id  = "USE YOUR OWN ACCOUNT ID"
  script_name = "hello-world"
  content     = file("hello-world.js")
  main_module = "worker.js"
}
