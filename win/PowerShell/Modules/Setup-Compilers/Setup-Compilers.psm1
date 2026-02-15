
function Compile-ASPNET {
    Start-Process -FilePath C:\Windows\Microsoft.NET\Framework64\v4.0.30319\aspnet_compiler.exe
}

Set-Alias -Name aspc -Value Compile-ASPNET

function Compile-CSharp {
    Start-Process -FilePath C:\Windows\Microsoft.NET\Framework64\v4.0.30319\csc.exe
}

Set-Alias -Name csc -Value Compiler-CSharp

function Compile-ILAssembly {
    Start-Process -FilePath C:\Windows\Microsoft.NET\Framework64\v4.0.30319\ilasm.exe
}

Set-Alias -Name ilasm -Value Compile-ILAssembly

function Compile-JScript {
    Start-Process -FilePath C:\Windows\Microsoft.NET\Framework64\v4.0.30319\jsc.exe
}

Set-Alias -Name jsc -Value Compile-JScript

function Compile-MSBuild {
    Start-Process -FilePath C:\Windows\Microsoft.NET\Framework64\v4.0.30319\MSBuild.exe
}

Set-Alias -Name msbuild -Value Compile-MSBuild

function Compile-VisualBasic {
    Start-Process -FilePath C:\Windows\Microsoft.NET\Framework64\v4.0.30319\vbc.exe
}

Set-Alias -Name vbc -Value Compile-VisualBasic