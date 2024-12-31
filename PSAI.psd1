@{
    RootModule        = 'PSAI.psm1'
    ModuleVersion     = '0.4.0'
    GUID              = '68662d19-a8f1-484f-b1b7-3bf0e8a436df'
    Author            = 'Douglas Finke'
    CompanyName       = 'Doug Finke'
    Copyright         = '© 2024 All rights reserved.'

    Description       = @'
PSAI brings OpenAI ChatGPT to PowerShell, leveraging advanced AI capabilities in your PowerShell scripts for dynamic, intelligent automation and data processing
'@

    PowerShellVersion = '7.1'

    # Modules that must be imported into the global environment prior to importing this module
    RequiredModules   = @(
        @{ModuleName = 'PwshSpectreConsole'; ModuleVersion = "2.1.1" ; GUID = "8c5ca00d-7f0f-4179-98bf-bdaebceaebc0" }
    )

    FunctionsToExport = @(
        # Private
        'Add-OAIToolsToList'
        'Get-MultiPartFormData'
        'Invoke-OAIBeta'
        'Get-ToolProperty'

        # Agent Tools
        'New-CalculatorTool'
        'New-TavilyAITool'
        'New-StockTickerTool'
        'New-YouTubeTool'

        # Agent Assistants
        'Invoke-YouTubeAIAssistant'
        'Get-YouTubeTop10'

        # Public
        'Invoke-QuickPrompt'
        'New-Agent'
        'Get-AgentResponse'
        'Invoke-InteractiveCLI'
        'Add-OAIVectorStore'
        'Clear-OAIAllItems'
        'Clear-OAIAssistants'
        'Clear-OAIFiles'
        'ConvertFrom-FunctionDefinition'
        'ConvertFrom-GPTMarkdownTable'
        'ConvertFrom-OAIAssistant'
        'ConvertFrom-UnixTimestamp'
        'ConvertTo-OAIAssistant'
        'ConvertTo-OAIMessage'
        'ConvertTo-OpenAIFunctionSpec'
        'ConvertTo-OpenAIFunctionSpecDataType'
        'ConvertTo-ToolFormat'
        'Copy-OAIAssistant'
        'Disable-UnitTesting'
        'dumpJson'
        'Enable-AIShortCutKey'
        'Enable-OAICodeInterpreter'        
        'Enable-OAIFileSearchTool'
        'Enable-UnitTesting'
        'Export-OAIAssistant'
        'Format-OAIFunctionCall'
        'Get-AzOAISecrets'
        'Get-FunctionDefinition'
        'Get-OAIAssistant'
        'Get-OAIAssistantItem'
        'Get-OAIFile'
        'Get-OAIFileContent'
        'Get-OAIFileItem'
        'Get-OAIFunctionCallSpec'
        'Get-OAIImageGeneration'
        'Get-OAIMessage'
        'Get-OAIMessageItem'
        'Get-OAIProvider'
        'Get-OAIRun'
        'Get-OAIRunItem'
        'Get-OAIRunStep'
        'Get-OAIRunStepItem'
        'Get-OAIThread'
        'Get-OAIThreadItem'
        'Get-OAIVectorStore'
        'Get-OAIVectorStoreFile'
        'Get-OAIVectorStoreFileBatch'
        'Get-OAIVectorStoreFileItem'
        'Get-OAIVectorStoreFilesInBatch'
        'Get-OAIVectorStoreItem'
        'Get-OpenAISpecDescriptions'
        'Get-UnitTestingData'
        'Get-UnitTestingStatus'
        'Import-OAIAssistant'
        'Invoke-AIExplain'
        'Invoke-AIPrompt'
        'Invoke-FilesToPrompt'
        'Invoke-OAIChat'
        'Invoke-OAIChatCompletion'
        'Invoke-OAIFunctionCall'
        'Invoke-OAIUploadFile'
        'Invoke-QuickChat'
        'Invoke-SimpleQuestion'
        'New-ChatRequestAssistantMessage'
        'New-ChatRequestSystemMessage'
        'New-ChatRequestToolMessage'
        'New-ChatRequestUserMessage'
        'New-OAIAssistant'
        'New-OAIAssistantWithVectorStore'
        'New-OAIChatMessage'
        'New-OAIMessage'
        'New-OAIRun'
        'New-OAIThread'
        'New-OAIThreadAndRun'
        'New-OAIThreadQuery'
        'New-OAIVectorStore'
        'New-OAIVectorStoreFile'
        'New-OAIVectorStoreFileBatch'
        'New-OpenAIChat'
        'Out-OAIMessages'
        'Register-Tool'
        'Remove-OAIAssistant'
        'Remove-OAIFile'
        'Remove-OAIMessage'
        'Remove-OAIThread'
        'Remove-OAIVectorStore'
        'Remove-OAIVectorStoreFile'
        'Reset-AIShortCutKey'
        'Reset-OAIProvider'
        'Set-AzOAISecrets'
        'Set-OAIProvider'
        'Show-OAIAPIReferenceWebPage'
        'Show-OAIAssistantWebPage'
        'Show-OAIBilling'
        'Show-OAIPlaygroundWebPage'
        'Show-OAIVectorStoreWebPage'
        'Stop-OAIRun'
        'Stop-OAIVectorStoreFileBatch'
        'Submit-OAIMessage'
        'Submit-OAIToolOutputs'
        'Test-JSONReplacement'
        'Test-LLMModel'
        'Test-OAIAssistantId'
        'Update-OAIAssistant'
        'Update-OAIMessage'
        'Update-OAIRun'
        'Update-OAIThread'
        'Update-OAIVectorStore'
        'Wait-OAIOnRun'
    )

    AliasesToExport   = @(
        'ai'
        'explain'
        'goaia'
        'noaia'
        'noait'
        'roaia'
        'uoaia'
        'q'
    )

    PrivateData       = @{
        PSData = @{
            Category   = "PowerShell AI Assistant Module"
            Tags       = @("PowerShell", "GPT", "OpenAI", "Assistant")
            ProjectUri = "https://github.com/dfinke/PSAI"
            LicenseUri = "https://github.com/dfinke/PSAI/blob/main/LICENSE"
            IconUri    = 'https://raw.githubusercontent.com/dfinke/PSAI/main/Media/PSAI.png'
        }
    }
}