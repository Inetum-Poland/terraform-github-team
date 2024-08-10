output "out" {
  value = {
    team     = github_team.team
    security = length(github_organization_security_manager.security) > 0 ? github_organization_security_manager.security : null
  }
  description = "Team settings object `github_team`."
}
