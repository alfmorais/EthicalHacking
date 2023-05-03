# Fase 1 - Coleta de Informaçoes

# Fase 2 - Scanning
Fase da coleta de dados de rede, tais como: IPS, Portas Abertas, servidores DNS e etc.

- Portas abertas e fechadas
- Portas filtradas (Presença de Firewalls)
- Softwares e respectivas versoes
- Coleta de Usuarios (Brute Force ou Sniffing)
- Coleta de Senhas (Brute Force ou Sniffing)
- Informaçoes de DNS
- Banner Grabbing

Tecnicas de Scan
- TCP Connect: Estabelece uma conexao completa com o Algo. Fica registrado o seu log no site alvo.
- TCP SYN: Estabelece uma conexao parcial (half-connect)
- TCP ACK: Estabelece uma ACK de primeira, bom para testar Firewall
- TCP XMAS: Envia um pacote TCP com todas as flags ativadas
- SCAN UDP: Se a porta estiver aberta uma resposta e enviada se a porta estiver fechada um pacote ICMP Port-Unreachable e enviado. Se a porta estiver sendo filtrada nenhuma resposta sera enviada.

## Tecnicas de Scan
- Camada de Rede = IPV4 e IPV6
- Camada de Transporte = TCP e UDP

# Fase 3 - Enumeraçao
Analise de serviços, versoes e sistemas operacionais: OpenSSH, Apache e etc.

# Fase 4 - Analise de Vulnerabilidades

# Fase 5 - Hacking

# Fase 6 - Pos-Exploraçao