module "aula_modules" {
  source = "./instancias"
  nome   = "movendo_state"
}

# Compare this snippet from Day-15/dia_03/aula_02_movendo_state/instancias/main.tf:
# moved {
#   from = module.aula_modules.aws_instance.this
#   to   = module.aula_modules.aws_instance.ops
# }
