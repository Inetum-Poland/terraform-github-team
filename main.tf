terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
  }
}

resource "github_team" "team" {
  name                      = var.name
  description               = var.description
  privacy                   = var.privacy
  parent_team_id            = var.parent_team_id
  ldap_dn                   = var.ldap_dn
  create_default_maintainer = var.create_default_maintainer
}

resource "github_organization_security_manager" "security" {
  count = var.security_manager ? 1 : 0

  team_slug  = github_team.team.slug
  depends_on = [github_team.team]
}
