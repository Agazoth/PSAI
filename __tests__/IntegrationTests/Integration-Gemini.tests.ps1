BeforeDiscovery {
    if ($env:GITHUB_ACTIONS -eq 'true') {
        $info = $null
    } else{
        $info = Get-SecretInfo -Name GeminiApiKey
    }
}

Describe "Test chat endpoints" -Skip:($null -eq $info) {

    BeforeAll {
        Import-Module "$(Split-Path $(Split-Path $PSScriptRoot))/PSAI.psd1" -Force
        $params = @{
                Provider = 'Gemini'
                ApiKey   = Get-Secret -Name GeminiApiKey
            }
        Import-AIProvider @params
    }

    Context "Invoke-OAIChatCompletion" {
        It "Invoke-OAIChatCompletion generates an answer" -Skip:($null -eq $info) {
            $Prompt = "What is the capitol of France"
            $Message = New-OAIChatMessage -Role user -Content $Prompt
            $Answer = Invoke-OAIChatCompletion -Message $Message
            $Answer | Should -Not -BeNullOrEmpty
            $Answer | Should -BeOfType [String]
            $Answer | Should -Match "Paris"
        }
        It "Moniker syntax generates an answer" -Skip:($null -eq $info) {
            $Model = Get-AIModel -ProviderName Gemini
            $Prompt = "What is the capitol of Italy"
            $Answer = $Model.Chat($Prompt)
            $Answer | Should -Not -BeNullOrEmpty
            $Answer | Should -BeOfType [String]
            $Answer | Should -Match "Rome"
        }
    }
}