workflow "ssh-eh" {
  on = "push"
  resolves = ["tunnelled-ssh"]
}

action "tunnelled-ssh" {
  uses = "./.github/action/localtunnel"
}
