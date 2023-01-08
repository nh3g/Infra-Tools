echo ""
echo "Instalando Python..."
echo ""
winget install -e --id Python.Python.3.10
echo ""
echo "instalando repositorios necessarios..."
echo ""
pip install -e joindomainBot;
echo ""
echo "Inicializando bot..."
echo ""
& cd '.\joindomainBot\joindomainBot\'
python bot.py