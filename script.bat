@echo off
echo "------Instalando Apps------"
color 0a

echo Ativando o winget caso não esteja instalado...
dism.exe /online /enable-feature /featurename:Microsoft.Windows.AppPackageManager /all /norestart

echo Instalando Winget...
powershell -command "iex ((New-Object System.Net.WebClient).DownloadString('https://aka.ms/install-winget'))"

echo Verificando a instalação do Winget...
winget --version

echo Instalação completa do Winget.

:: baixa os programas via winget 
echo Instalando Apps...
winget install --id Microsoft.WindowsTerminal
winget install --id Valve.Steam
winget install --id Google.Chrome
winget install --id Neovim.Neovim 
winget install --id Python.Python.3.9
winget install --id Git.Git 
winget install --id Microsoft.VisualStudioCode
winget install --id Discord.Discord

echo "------Instalação de Apps Concluída------"
echo "https://github.com/matheus-oliveira-venancio"
pause
