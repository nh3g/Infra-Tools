#Politicas - permite execução de scripts;
Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Confirm:$false;
echo " Politicas do shell liberadas";
cd .\;

# Renomear computador - adiciona serialnumber da máquina
$var2 =  Get-WmiObject win32_SystemEnclosure | select serialnumber;
$var4 = $var2 -replace ".*=" ;
$var4 = $var4 -replace '[-}]' ;
$var4 ;
Rename-Computer -NewName $var4; #caso deseje adicionar outro nome antes do serialnumber basta adicionalo junto ao $var4 separando-o por "-". 

echo "------------------------------------------" $var4 "------------------------------------------" ;

#Controle de conta - insira a senha e user que deseja crirar nos campos denominados abaixo; 
$var = 'insira a senha aqui' ; #insira a senha 
net user Insira o User aqui $var /passwordchg:no /add; #insira o user
Set-LocalUser -Name 'Insira o usuario desejado' -PasswordNeverExpires 1;  #insira o user
Add-LocalGroupMember -Group "Administradores" -Member "Insira o usuario desejado"; #insira o user
echo "Conta local criada";

#Adeus Hello - desativa o windows hello;
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\PassportForWork" /v Enabled /t REG_DWORD /d 0 /f;
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\PassportForWork" /v DisablePostLogonProvisioning /t REG_DWORD /d 0 /f  ;
echo "Windows Hello desativado";


#Certificado - Insira aqui um certificado caso deseje importar e retire o comentário;
#Import-Certificate -FilePath "Insira o local do certificado aqui" -CertStoreLocation Cert:\LocalMachine\Root;

#echo "Certificados Azure implementados";

#remove aplicativos indesejados (padrões do windows)
Get-AppxPackage 3dbuilder | Remove-AppxPackage;
Get-AppxPackage windowsalarms | Remove-AppxPackage;
Get-AppxPackage officehub | Remove-AppxPackage;
Get-AppxPackage skypeapp | Remove-AppxPackage;
Get-AppxPackage getstarted | Remove-AppxPackage;
Get-AppxPackage zunemusic | Remove-AppxPackage;
Get-AppxPackage windowsmaps | Remove-AppxPackage;
Get-AppxPackage solitairecollection | Remove-AppxPackage;
Get-AppxPackage bingfinance | Remove-AppxPackage;
Get-AppxPackage zunevideo | Remove-AppxPackage;
Get-AppxPackage bingnews | Remove-AppxPackage;
Get-AppxPackage windowsphone | Remove-AppxPackage;
Get-AppxPackage xboxapp | Remove-AppxPackage;

# Puxa arquivo de instalação local para instalar o AnyDesk
cd Base\Outros
wget https://download.anydesk.com/AnyDesk.msi -OutFile any.msi;
Start-Process any.msi -Wait /passive;

# Instala aplicativos desejados com Winget
winget install Dell.DellUpdate;
winget install Google.Chrome;
winget install 7zip.7zip;
winget install Microsoft.Teams;
winget install Mozilla.FirefoxESR;
winget install Oracle.JavaRuntimeEnvironment; 
winget install PuTTY.PuTTY;
winget install -e --id OpenVPNTechnologies.OpenVPN;
winget install -e --id Microsoft.VisualStudioCode
winget install -e --id WinSCP.WinSCP

#Wallpaper - altera o wallpaper para o desejado, substitua o arquivo "wall.png" pela imagem desejada;
$targetfolder = ".\wall.png";
echo "Wallpaper da conta local alterado, talvez seja necessário reiniciar o pc";
Set-ItemProperty -Path "HKCU:\Control Panel\Desktop" -Name "WallPaper" -Value $targetfolder;
RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters;




Set-ExecutionPolicy -ExecutionPolicy Restricted -Confirm:$false;


echo "adeus";