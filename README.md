# Debian_Stable2Testing

Script em BASH para mudar o branch do Debian 12 Bookworm de **Stable** para **Testing**.

---

## Avisos Importantes ⚠️

- **Uso por sua conta e risco:** Não me responsabilizo por problemas que possam surgir ao usar este script.
- **Estabilidade vs. Novidades:** O branch **Stable** é recomendado para servidores ou workstations críticas. Use **Testing** apenas se precisar de pacotes mais recentes e tiver alguma experiência com GNU/Linux.
- **Backup:** Faça backup de seus dados importantes antes de executar o script.

---

## Como Utilizar 🛠️

1. **Baixe os arquivos do repositório.**

2. **Abra o terminal** na pasta onde os arquivos foram extraídos.

3. **Altere para o usuário root:**
   ```bash
   su
   ```

4. **Dê permissão de execução ao script (recomendado):**
   ```bash
   chmod +x Stable2Testing.sh
   ```

5. **Execute o script:**
   ```bash
   ./Stable2Testing.sh
   ```

---

## O Processo 🔄

- A mudança de branch levará alguns minutos.
- Durante o processo, será necessária interação manual. Use:
  - **TAB**, **barra de espaço** e **Enter** para navegar pelas opções no terminal.
  - Caso perceba algo errado, você pode interromper o script com:
    ```bash
    Ctrl + C
    ```

- **Reinicialização:** Ao final, o computador será reiniciado automaticamente. Este passo é essencial para finalizar o processo.

---

## Possíveis Problemas e Soluções 🚨

- **Sem interface gráfica após reiniciar:**  
  Use o seguinte comando para instalar uma nova interface gráfica:
  ```bash
  tasksel
  ```
  Certifique-se de estar como usuário root ou no grupo `sudo` para executar este comando.

---

## Licença 📜

Sinta-se à vontade para usar, modificar e compartilhar este script. Contribuições são bem-vindas!

---
