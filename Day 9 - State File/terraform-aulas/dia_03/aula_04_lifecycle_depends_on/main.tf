module "projetob" {
  source      = "./instancias"
  nome        = "projetoLifecycle"
  environment = "Develop"
  ami         = "ami-04f167a56786e4b09"
  ami_bd      = "ami-0c3b809fcf2445b6a"
}