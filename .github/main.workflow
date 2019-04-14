workflow "Build PDF" {
  resolves = ["maxheld83/ghpages@v0.2.1"]
  on = "push"
}

action "Only on master" {
  uses = "actions/bin/filter@4227a6636cb419f91a0d1afb1216ecfab99e433a"
  args = "branch master"
}

action "asciidoctor" {
  uses = "abapGit/sotn_2019_q2/action@master"
  needs = ["Only on master"]
}

action "maxheld83/ghpages@v0.2.1" {
  uses = "maxheld83/ghpages@v0.2.1"
  needs = ["asciidoctor"]
  env = {
    BUILD_DIR = "build/"
  }
  secrets = ["GH_PAT"]
}
