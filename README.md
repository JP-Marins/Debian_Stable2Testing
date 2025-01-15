# Stable2Testing

Script em BASH para mudança do branch Stable para Testing, no Debian 12 Bookworm

## Atenção

Não me responsabilizo pelos possíveis problemas que o usuário (você) possa encontrar ao usar tal script. Lembre-se que se tratando de servidores ou workstations de produção sensível, o branch Stable é mais recomendado. Use apenas o ramo Testing caso você queira pacotes mais recentes, e tenha alguma experiência com GNU/Linux.

## Como utilizar

Após baixar os arquivos deste repositório, abra o terminal na pasta extraída.
Altere o seu usuário para root usando o comando:
```
su
```
Para dar permissão de execução para o script (recomendado) use o comando:
```
chmod +x Stable2Testing.sh
```
E por fim, execute o script usando o comando:
```
sh Stable2Testing.sh
```

A mudança de branches deve levar alguns minutos. Lembre-se de ficar de olho, pois será necessária alguma interação humana durante o processo (lembre-se de interagir com as teclas TAB, barra de espaço e Enter, para interfaces via terminal). Caso perceba algo de errado durante o processo, você pode cancelar usando o comando:
```
Ctrl + C
```

Quando o script finalizar, ele irá reiniciar o computador. Isto é de extrema importância, para finalização de todo o processo.

## Possíveis erros

Caso o Debian esteja sem interface gráfica ao ser reiniciado, você pode baixar e instalar uma nova interface usando o comando
```
tasksel
```
É necessário estar como usuário root para executar tal comando (a não ser que você tenha colocado o seu usuário no arquivo de sudoers).
