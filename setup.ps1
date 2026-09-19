[CmdletBinding()]
param(
    [switch]$Publish
)

$ErrorActionPreference = "Continue"
$RepoName = "Bahram-Kuranyi"
$RepoUrl = "https://github.com/Bahram-Kuranyi/$RepoName.git"

Write-Host "`nBahram's GitHub Profile — setup" -ForegroundColor Cyan
Write-Host "Repository: $RepoUrl`n" -ForegroundColor DarkGray

if (-not (Get-Command git -ErrorAction SilentlyContinue)) {
    throw "Git is not installed. Install Git for Windows, then run this script again."
}

if (-not (Test-Path ".git")) {
    git init -b main
}

git add README.md assets .github SETUP-FA.md setup.ps1 LICENSE .gitignore

$hasCommit = git rev-parse --verify HEAD 2>$null
if (-not $hasCommit) {
    git commit -m "feat: launch GitHub profile"
} else {
    git commit -m "feat: update GitHub profile" 2>$null
    if ($LASTEXITCODE -ne 0) {
        Write-Host "No new changes to commit." -ForegroundColor Yellow
    }
}

if (-not $Publish) {
    Write-Host "`nLocal repository is ready." -ForegroundColor Green
    Write-Host "To create and publish the GitHub repository, run:" -ForegroundColor White
    Write-Host "  .\setup.ps1 -Publish" -ForegroundColor Cyan
    exit 0
}

if (-not (Get-Command gh -ErrorAction SilentlyContinue)) {
    throw "GitHub CLI is not installed. Install it with: winget install --id GitHub.cli"
}

gh auth status
if ($LASTEXITCODE -ne 0) {
    gh auth login
}

$repoExists = gh repo view "Bahram-Kuranyi/$RepoName" --json name 2>$null
if ($LASTEXITCODE -eq 0) {
    if (-not (git remote get-url origin 2>$null)) {
        git remote add origin $RepoUrl
    }
    git push -u origin main
} else {
    gh repo create $RepoName --public --source=. --remote=origin --push `
        --description "Software Engineer · Full-Stack · AI Builder"
}

Write-Host "`nPublished successfully:" -ForegroundColor Green
Write-Host "  https://github.com/Bahram-Kuranyi" -ForegroundColor Cyan
Write-Host "`nOpen Actions and run 'Generate contribution snake' once if the snake is not visible yet." -ForegroundColor Yellow


