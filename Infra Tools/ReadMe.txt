 =========================================
|        Infra Tools - by nh3g           |  
|________________________________________|           
| Linkedin: linkedin.com/in/enzoaugusto/ |
| GitHub: github.com/nh3g                |
 ======================================== 

Esse programa tem como finalidade preparar novas máquinas autómaticamente e integrar a infraestruturas pré-existentes.

Este programa é um portable, ou seja: Ele pode ser usado tanto em um pendrive como em uma núvem, sem necessidade de instalção
e deixando-o pronto para uso com as configurações já personalizadas.
Todos os locais destinados as configurações personalizadas estão comentados dentro do arquivo os locais corretos para inserir 
as configurações.
________________________________________________________________________________________________________________________
# Instalação Winget

Essa instalação é necessaria caso seu computador não esteja nas novas versões do windows (onde essa aplicação já vem 
pré instalada)
Ela é necessária para baixar os programas personalizados desejados.
________________________________________________________________________________________________________________________
# Instalações Notebook / Desktop
 
o modo de instalação de programas executa as seguintes ações: Renomeia Computador para serialnumber puxado da Bios,
cria um usuario local personalizado e o inclui aos administradores, desativa o windows hello, implementa certificados
desejados, remove aplicativos indesejados (aplicativos padrões pré instalados do windows), instala programas desejados
automaticamente utilizando Winget silenciosamente, altera para o wallpaper desejado. 

Os modos de instalação são separados para Notebooks e Desktops para realização de configuração personalizada para cada
tipo de dispositivo. 

Para configuração e personalização das configurações a sua infra é necessario alterar o script nos campos denominados em:

Para notebooks: .\Base\Notebook\Script.ps1
Para desktops: .\Base\Desktop\Script.ps1

A instalação com inventário GLPI apenas adiciona o script explicado abaixo.
________________________________________________________________________________________________________________________
# Adicionar ao inventário GLPI 

Este modo adiciona seu computador automáticamente a seu inventário GLPI pré existente. 
Ele executa o Agent 1.4 em modo silencioso com as configurações pré estabelecidas no seguinte local para alteração:

.\Base\Inventory\gerenciadorx64.bat (Para computadores 64 bits)
.\Base\Inventory\gerenciadorx86.bat (Para computadores 32 bits)

Configure direcionando ao endereço do seu GLPI
__________________________________________________________________________________________________________________________
# Ingressar ao Azure AD

Este modo ingressa o dispositivo ao Azure Actice Directory automáticamente.
Será necessário adicionar as credenciais de acesso ao AD em:

.\Base\joindomainBot\joindomainBot\joindomainBot\bot.py
____________________________________________________________________________________________________________________________
# ATENÇÃO:

Caso o Script não iniciar, possivelmente seu sistema está desabilitado para execução de Scripts, 
para solucionar abra o Powershell como Administrador e execute o comando:

Set-ExecutionPolicy Unrestricted
_____________________________________________________________________________________________________________________________
