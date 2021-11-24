workflow "env-debug" {
  on = "push"
  resolves = ["env"]
}

action "env" {
  uses = "./.github/action/env"
}
