workflow "env-debug" {
  resolves = ["env"]
}

action "env" {
  uses = "./.github/action/env"
}
