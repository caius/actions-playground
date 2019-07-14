workflow "ssh-eh" {
  resolves = ["tunnelled-ssh"]
}

action "tunnelled-ssh" {
  uses = "./.github/action/localtunnel"
}
