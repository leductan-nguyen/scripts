# posh-git (pour le prompt et le moteur d'autocomplétion)
Import-Module posh-git
$GitPromptSettings.DefaultPromptPath.ForegroundColor = 'Orange'
$GitPromptSettings.DefaultPromptAbbreviateHomeDirectory = $true
$GitPromptSettings.DefaultPromptAbbreviateGitDirectory = $true

# Vos alias sur mesure + leur autocomplétion via posh-git
$gitMap = @{
    'gl'    = 'git pull'
    'gco'   = 'git checkout'
    'gcb'   = 'git checkout -b'
    'gbD'   = 'git branch -D'
    'gp'    = 'git push'
    'gcmsg' = 'git commit -m'
    'gaa'   = 'git add --all'
    'gd'    = 'git diff'
    'glg'   = 'git log --oneline'
    'grhh'  = 'git reset --hard'
    'gpsup' = 'git push --set-upstream origin'
    'gst'   = 'git status'
    'gb'    = 'git branch'
    'gsta'  = 'git stash apply'
    'gstaa' = 'git stash apply --index'
}

foreach ($entry in $gitMap.GetEnumerator()) {
    $alias = $entry.Key
    $targetCommand = $entry.Value

    # 0. Supprimer l'alias PowerShell natif ou existant (ex: gl -> Get-Location)
    if (Test-Path "Alias:$alias") {
        Remove-Item "Alias:$alias" -Force
    }

    # 1. Créer la fonction globale proprement
    $sb = [scriptblock]::Create("$targetCommand `$args")
    Set-Item -Path "Function:\global:$alias" -Value $sb

    # 2. Brancher le moteur d'autocomplétion de posh-git dessus
    Register-ArgumentCompleter -CommandName $alias -ScriptBlock {
        param($wordToComplete, $commandAst, $cursorPosition)
        
        $astString = $commandAst.ToString()
        $firstWord = $commandAst.CommandElements[0].Value
        $newInput = $astString -replace "^$firstWord", $targetCommand

        [System.Management.Automation.CommandCompletion]::CompleteInput(
            $newInput,
            $newInput.Length,
            $null
        ).CompletionMatches
    }
}

# PS autocomplete
Set-PSReadLineOption -PredictionViewStyle ListView
