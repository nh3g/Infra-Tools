"""
WARNING:

Please make sure you install the bot with `pip install -e .` in order to get all the dependencies
on your Python environment.

Also, if you are using PyCharm or another IDE, make sure that you use the SAME Python interpreter
as your IDE.

If you get an error like:
```
ModuleNotFoundError: No module named 'botcity'
```

This means that you are likely using a different Python interpreter than the one used to install the bot.
To fix this, you can either:
- Use the same interpreter as your IDE and install your bot with `pip install -e .`
- Use the same interpreter as the one used to install the bot (`pip install -e .`)

Please refer to the documentation for more information at https://documentation.botcity.dev/
"""

from botcity.core import DesktopBot
# Uncomment the line below for integrations with BotMaestro
# Using the Maestro SDK
# from botcity.maestro import *


class Bot(DesktopBot):
    def action(self, execution=None):
        # Uncomment to silence Maestro errors when disconnected
        # if self.maestro:
        #     self.maestro.RAISE_NOT_CONNECTED = False

        # Fetch the Activity ID from the task:
        # task = self.maestro.get_task(execution.task_id)
        # activity_id = task.activity_id

        # Opens the BotCity website
        if not self.find( "Win", matching=0.97, waiting_time=10000):
            self.not_found("Win")
        self.click()
        self.type_key("escola")
        if not self.find( "Abrir", matching=0.97, waiting_time=10000):
            self.not_found("Abrir")
        self.click()
        if not self.find( "Conectar", matching=0.97, waiting_time=10000):
            self.not_found("Conectar")
        self.click()
        if not self.find( "Adicionar", matching=0.97, waiting_time=10000):
            self.not_found("Adicionar")
        self.click()
        if not self.find( "Click", matching=0.97, waiting_time=10000):
            self.not_found("Click")
        self.click()
	# Insira seu email abaixo
        self.paste("Insira seu email aqui")
        self.key_enter()
        if not self.find( "Senha", matching=0.97, waiting_time=10000):
            self.not_found("Senha")
        self.click()
	# Insira sua Senha abaixo
        self.paste("Insira sua Senha aqui")
        self.key_enter()
        if not self.find( "Ingressar", matching=0.97, waiting_time=10000):
            self.not_found("Ingressar")
        self.click()
        if not self.find( "Concluido", matching=0.97, waiting_time=10000):
            self.not_found("Concluido")
        self.click()
        
        
        
        # Uncomment to mark this task as finished on BotMaestro
        # self.maestro.finish_task(
        #     task_id=execution.task_id,
        #     status=AutomationTaskFinishStatus.SUCCESS,
        #     message="Task Finished OK."
        # )

    def not_found(self, label):
        print(f"Element not found: {label}")


if __name__ == '__main__':
    Bot.main()


