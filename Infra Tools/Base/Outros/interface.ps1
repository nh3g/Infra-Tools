function Show-Menu1
{
     param (
           [string]$Title1 = 'Escolha a versão do seu windows:'
     )
     cls 
     echo  " ================================================"
    echo  "|              Infra Tools - by nh3g             |"
     echo  " ================================================"
     echo ""
     Write-Host "$Title1       "

     echo ""
     Write-Host "1: Insira '1' para x86 (32bits)"
     Write-Host "2: Insira '2' para x64 (64bits)"
     Write-Host "?: Insira '?' para Instruções"
     Write-Host "Q: Insira 'Q' para sair"
     Write-Host ""
}

do
{
     Show-Menu1
     $input1 = Read-Host "Coloque a opção desejada"
     switch ($input1)
     {
           '1' {
               function Show-Menu
{
     param (
           [string]$Title = 'Opção de Instalação:'
     )
     cls 
     echo  " ================================================"
    echo  "|              Infra Tools - by nh3g             |"
     echo  " ================================================"
     echo ""
     Write-Host "$Title       "
     echo ""
     Write-Host "1: Insira '1' instalar WINGET (obrigatório p/ scripts de instalação)"
     Write-Host "2: Insira '2' para Notebooks"
     Write-Host "3: Insira '3' para Desktops"
     Write-Host "4: Insira '4' para Desktops c/ inventário"
     Write-Host "5: Insira '5' para Notebooks c/ inventário"
     Write-Host "6: Insira '6' para Adicionar somente a Inventário GLPI"
     Write-Host "7: Insira '7' para Ingressar dispositivo ao Azure AD"
     Write-Host "?: Insira '?' para Instruções"
     Write-Host "Q: Insira 'Q' para sair"
     Write-Host ""
}

do
{
     Show-Menu
     $input = Read-Host "Coloque a opção desejada"
     switch ($input)
     {
           '1' {
               .\Base\Outros\winget.msixbundle
           }'2' {
                .\Base\Notebook\script.ps1;
           } '3' {
                .\Base\Desktop\script.ps1;
           } '4' {
           echo "Adicionando a inventário..."
           echo "Aguarde..."
                .\Base\Inventory\gerenciadorx86.bat
           echo ""
           echo "Adicionado com sucesso"
           echo ""
           echo "Iniciando Script de instalação..."
                .\Base\Desktop\script.ps1;
           } '5' {
           echo "Adicionando a inventário..."
           echo "Aguarde..."
                .\Base\Inventory\gerenciadorx86.bat
           echo ""
           echo "Adicionado com sucesso!"
           echo ""
           echo "Iniciando Script de instalação..."
                .\Base\Notebook\script.ps1;     
           } '6' {
                 echo "Adicionando a inventário..."          
                 echo "Aguarde..."
                .\Base\Inventory\gerenciadorx86.bat
                 echo ""
                 echo "Adicionado com sucesso!";
            } '7' {
                 echo "Adicionando ao AZURE AD..."          
                 echo "Aguarde..."
                .\Base\joindomainBot\initexecute.bat
                 echo ""
                 echo "Adicionado com sucesso!";
           } '?' {
echo ""
echo "*Instale o Winget primeiro caso deseje executar o Script de instalação*  

Utilize a opção isolada 'Adicionar ao GLPI' para somente adicionar a máquina ao inventário (Ideal para máquinas com programas já instalados)

Utilize a 'instalar Desktop/Notebook' isolado caso deseje somente instalar o Script de instalação (Ideal para máquinas já inventáriadas)

Utilize 'instalar Desktop/Noteboot c/ inventário' caso deseje instalar o Script de instalação e inventáriar (Ideal para novas máquinas)

Utilize 'Ingressar dispositivo ao Azure AD' caso deseje adicionar o dispositivo ao dominio (Funcional somente em máquinas sem dominio AD instalado)
*Recomendado ingresso antes de Inventáriar dispositivo*"
echo "";
           } 'q' {
                return
           }
     }
     pause
}
until ($input -eq 'q');
           }'2' {
                function Show-Menu
{
     param (
           [string]$Title = 'Opção de Instalação:'
     )
     cls 
     echo  " ================================================"
    echo  "|              Infra Tools - by nh3g             |"
     echo  " ================================================"
     echo ""
     Write-Host "$Title       "
     echo ""
     Write-Host "1: Insira '1' instalar WINGET (obrigatório p/ scripts de instalação)"
     Write-Host "2: Insira '2' para Notebooks"
     Write-Host "3: Insira '3' para Desktops"
     Write-Host "4: Insira '4' para Desktops c/ inventário"
     Write-Host "5: Insira '5' para Notebooks c/ inventário"
     Write-Host "6: Insira '6' para Adicionar somente a Inventário GLPI"
     Write-Host "7: Insira '7' para Ingressar dispositivo ao Azure AD"
     Write-Host "?: Insira '?' para Instruções"
     Write-Host "Q: Insira 'Q' para sair"
     Write-Host ""
}

do
{
     Show-Menu
     $input = Read-Host "Coloque a opção desejada"
     switch ($input)
     {
           '1' {
               .\Base\Outros\winget.msixbundle
           }'2' {
                .\Base\Desktop\script.ps1;
           } '3' {
                .\Base\Notebook\script.ps1;
           } '4' {
           echo "Adicionando a inventário..."
           echo "Aguarde..."
                .\Base\Inventory\gerenciadorx64.bat
           echo ""
           echo "Adicionado com sucesso"
           echo ""
           echo "Iniciando Script de instalação..."
                .\Base\Desktop\script.ps1;
           } '5' {
           echo "Adicionando a inventário..."
           echo "Aguarde..."
                .\Base\Inventory\gerenciadorx64.bat
           echo ""
           echo "Adicionado com sucesso!"
           echo ""
           echo "Iniciando Script de instalação..."
                .\Base\Notebook\script.ps1;     
           } '6' {
                 echo "Adicionando a inventário..."          
                 echo "Aguarde..."
                .\Base\Inventory\gerenciadorx64.bat
                 echo ""
                 echo "Adicionado com sucesso!";
           } '7' {
                 echo "Adicionando ao AZURE AD..."          
                 echo "Aguarde..."
                .\Base\joindomainBot\initexecute.bat
                 echo ""
                 echo "Adicionado com sucesso!";
           } '?' {
echo ""
echo "*Instale o Winget primeiro caso deseje executar o Script de instalação* 

Utilize a opção isolada 'Adicionar ao GLPI' para somente adicionar a máquina ao inventário (Ideal para máquinas com programas já instalados)

Utilize a 'instalar Desktop/Notebook' isolado caso deseje somente instalar o Script de instalação (Ideal para máquinas já inventáriadas)

Utilize 'instalar Desktop/Noteboot c/ inventário' caso deseje instalar o Script de instalação e inventáriar (Ideal para novas máquinas)

Utilize 'Ingressar dispositivo ao Azure AD' caso deseje adicionar o dispositivo ao dominio (Funcional somente em máquinas sem dominio AD instalado)
*Recomendado ingresso antes de Inventáriar dispositivo*"
echo "";
           } 'q' {
                return
           }
     }
     pause
}
until ($input -eq 'q');
          
           } '?' {
echo ""
echo "Win 10/8.1/8.0: Acesse a aba de 'Configurações' do Windows e clique em 'Sistema'; 
No menu esquerdo, acesse 'Sobre' e, no item 'Tipo de sistema', você poderá ver se o PC é 32 ou 64 bits."
echo "";
           } 'q' {
                return
           }
     }
     pause
}
until ($input -eq 'q')

















