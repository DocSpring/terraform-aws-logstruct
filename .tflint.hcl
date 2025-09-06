plugin "terraform" {
  enabled = true
}

# Keep linting minimal and focused for module repo
rule "terraform_unused_declarations" { enabled = true }
rule "terraform_deprecated_index" { enabled = true }
rule "terraform_naming_convention" { enabled = false }
rule "terraform_documented_outputs" { enabled = false }
rule "terraform_documented_variables" { enabled = false }
rule "terraform_module_pinned_source" { enabled = false }
rule "terraform_required_providers" { enabled = false }
rule "terraform_required_version" { enabled = false }
rule "terraform_standard_module_structure" { enabled = false }

