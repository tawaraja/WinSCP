#Requires -Modules Pester, PSScriptAnalyzer, WinSCP

Get-Process -Name WinSCP -ErrorAction SilentlyContinue |
    Stop-Process -Force

Describe "Sync-WinSCPPath" {
    Context "Invoke-ScriptAnalyzer -Path `"$((Get-Module -Name WinSCP).ModuleBase)\Public\Sync-WinSCPPath.ps1`"" {
        $results = Invoke-ScriptAnalyzer -Path "$((Get-Module -Name WinSCP).ModuleBase)\Public\Sync-WinSCPPath.ps1"

        It "Invoke-ScriptAnalyzer of Sync-WinSCPPath results count should be 0." {
            $results.Count |
                Should Be 0
        }
    }
}
