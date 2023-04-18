# Redes (Network)

O que são redes de computadores: são conjuntos de dois ou mais dispositivos eletrônicos de computação interligados por um sistema de comunicação digital, guiados por um conjunto de regras para compartilhar entre si informações, serviços e recursos físicos e lógicos. 

## LAN (Local Area Network)

LAN significa rede local. Uma rede é um grupo de dois ou mais computadores conectados e uma LAN é uma rede contida em uma pequena área geográfica, geralmente no mesmo prédio. Redes WiFi domésticas e redes de pequenas empresas são exemplos comuns de LANs. As LANs também podem ser bastante grandes, embora se ocuparem vários edifícios, geralmente é mais preciso classificá-las como redes de longa distância (WAN) ou redes de área metropolitana (MAN).

## MAN (Metropolitan Area Network)

MAN é um acrônimo para Metropolitan Area Network. Uma rede de área metropolitana é similar a uma rede local (LAN), mas abrange uma cidade ou campus inteiro. Ela é formada a partir da conexão de várias LANs, unindo-as com linhas de backbone. Sendo assim, MANs está em uma escala muito maior que uma LAN, no entanto, não cobre uma área tão grande quanto as redes de longa distância(WANs). MANs conectam as LANs próximas umas às outras em altas velocidades. Basicamente é formada de comutadores e roteadores, e geralmente, cobre algumas dezenas de quilômetros. Um órgão governamental ou uma empresa normalmente possui uma MAN. 

## WAN (Wide Area Network)

Definimos WAN ou rede de área ampla como uma rede de computadores que conecta redes menores. Como as WANs não estão vinculadas a um local específico, elas permitem que redes localizadas se comuniquem entre si a grandes distâncias. Elas também facilitam a comunicação e o compartilhamento de informações entre dispositivos de qualquer lugar do mundo.

## Principais Característica de Rede Atualmente

- Homogêneas (Múltiplas tecnologias envolvidas na transmissão de informação)
- Utilizam os protocolos da pilha TCP-IP
- Muitos dispositivos interconectados (IOT - Internet of Things)
- Internet?

# Modelo OSI e TCP-IP

## O que são modelos de redes?

- Conjuntos de normas que padronizam uma comunicação de rede.
- Atualmente existem os modelos OSI x TCP-IP (Pilha TCP-IP)
- Dividem a comunicação em camadas, cada camada tem suas próprias regras.
- Utilizam protocolos de rede para padronizar mensagens
- Toda comunicação na internet usa um conjunto de protocolos para ser feita.

## Modelo OSI

- Proposto pela Internacional Standards Organization (ISO)
- Foi desenvolvido no ano de 1984
- Possui 7 camadas
- Modelo de Referência

### Camadas:
- Aplicação
- Apresentação
- Sessão
- Transporte
- Enlace
- Física

OBS: Modelo Teórico

## Modelo TCP-IP (Pilha TCP-IP)

- Desenvolvido pelo DOD (departamento de Defesa Americano)
- Foi desenvolvido no ano de 1969
- Possui 4 camadas
- Modelo utilizado na internet

### Camadas:
- Aplicação
- Transporte
- Internet
- Física

### OSI X TCP-IP
- Aplicação, apresentação, sessão → Aplicação
- Transporte → Transporte
- Rede → Internet
- Enlace, Física → Física

### Objetivos de Cada Camadas:

- Aplicação: Mais próxima do Usuário, interação dos softwares com serviços de rede
- Apresentação: Exibição dos dados em um formato claro e legível
- Sessão: Estabelecimento de comunicação entre duas aplicações em computadores diferentes
- Transporte: Estabelece de conexão fim a fim entre dois hosts (portas)
- Rede: endereçamento da rede e roteamento dos pacotes até o destino
- Enlace: formulário dos frames para envio pelas placas de rede e checagem de erros
- Física: Envio de dados de forma binário (cabos, luz, ondas de rádio, etc.)

# Protocolos de Rede

## TCP-IP

- Aplicação: HTTP, DNS, FTP, SSH
- Transporte: TCP e UDP
- Internet: IPV4, IPV6, OSPF, ICMP
- Física: Ethernet, PPP e DSL

## Entendendo a comunicação TCP-IP

Processo de encapsulamento → descapsulamento

## Protocolo IP e ICMP

### Camada de Rede
- Responsável pela transferência de dados, independente da aplicação utilizada
- Endereçar cada um dos hosts na rede
- Não garante a entrega do pacote, trabalha com o conceito de best effort
- Roteadores trabalham nessa camada para enviar pacotes entre redes Ips distintas

IMAGEM Cabeçalho do IP

- Entendendo o IPV4
- Endereço de 32 bits → 4.294.967.296
- Atualmente esta sendo substituído pelo protocolo IPV6
- Escrito em forma decimal → 192.168.0.10
- Possui endereços privados e públicos
- Utiliza uma máscara para definir rede e host → 255.255.255.255
- Entender Máscara DE SUB-REDE

Há milhões de redes privadas em todo o mundo que incluem dispositivos atribuídos a endereços IP privados dentro destes intervalos:

- Classe A: 10.0.0.0 — 10.255.255.255.
- Classe B: 172.16.0.0 — 172.31.255.255.
- Classe C: 192.168.0.0 — 192.168.255.255.

### Entendendo o IPV6
- Endereço de 128 bits → 340 undecilhões de endereços possíveis
- Embora antigo, ainda está em fase de implantação.
- Escrito em forma Hexadecimal → exemplo?
- Também utiliza máscara para definir a parte de rede e host

### Protocolo ICMP
O ICMP (Internet Control Message Protocol), ou protocolo de mensagem de controle da Internet, é utilizado pelos hosts e roteadores da rede e permitem reportar informações da camada de rede entre eles, sendo também utilizado para realizar testes na rede.

- Internet Control Message Protocol
- Utiliza para resolução de problemas de conexão
- Utilizados em programas como PING e TRACERT
- Utiliza códigos para informar sobre problemas e informações de rede

![Protocolo ICMP](imagens/networks/cabeçalho-icmp.png)

O tipo determina a finalidade do pacote ICMP. Porque explica brevemente por que o dispositivo de origem recebeu essa mensagem. Existem de 0 a 255 tipos de mensagens ICMP, portanto, cada tipo fornece informações diferentes. Alguns tipos importantes de ICMP são:

0: Solicitação de eco
3: Destino inacessível
4: Extinção de Fonte
5: Redirecionar
8: Resposta de eco
11: Tempo Excedido
12: Problema de parâmetro
30: Traceroute

### Camadas de Transporte

- Responsável por estabelecer uma comunicação fim a fim entre hosts
- Utiliza o conceito de portas
- a maioria das aplicações estão relacionadas a um número de porta
- Todas comunicação na internet utiliza ou TCP, ou UDP

### Portas e Aplicações

- HTTP, FTP, SSH → TCP
- DNS, DHCP, SNMP → UDP

### Portas e Aplicações

![Portas e Aplicações](imagens/networks/servicos_portas.png)

### Características do Protocolo TCP

- Transmission Control Protocol
- Protocolo Confiável que garante a entrega de dados
- Utiliza controle de fluxo, reordenação dos pacotes e controle de entrega
- Protocolos que utilizam o TCP: HTTP, FTP, SSH, TELNET…

Cabeçalho do TCP

### Three-Way HandShake

![Three-Way HandShake](imagens/networks/3handshake.png)

### Protocolos UDP

- User Datagram Protocol
- Protocolo não confiável, envio dos dados com o melhor esforço
- Mais rápido que TCP (utilizando em comunicações como streamings e voz)
- Protocolos que utilizam o UDP: DHCP, TFTP, SNMP, DNS.

![Cabeçalho do Protocolo UDP](imagens/networks/cabeçalho-do-TCP.png)

### Camada de Aplicação

- Mais próxima do Usurário
- Interação direta entre os softwares com os serviços de rede TCP-IP
- Serviços estão relacionados com um número de portas
- Numero maior de protocolos para se conhecer

Protocolos:
- Domain Name System (DNS)
- Hyper Text Transfer Protocol (HTTP)

### Camada Enlace

- Preparo e Transmissao dos dados enviados pelos meios fisicos
- Protocolos Ethernet, PPP, ARP, 802.1Q
- Switches atuam nessa camada, movimentando frames (pacotes) na rede
- Utilizam endereços MAC para encaminhar os frames

### Endereço MAC (Media Access Control)

- Endereços unicos atrelados a placas de redes de dispositivos
- Exibido no formato Hexadecimal
- Utilizado para enviar frames entre dois hosts
- Nao substituem o endereço IP

### Switches

- Atuam por padrao na camada fisica do TCP-IP (enlace e fisica do OSI)
- Leem frames e fazem o encaminhamento baseado no endereco MAC
- Utilizam uma tabela de MACS para mapear onde estao os hosts (CAM Table)
- Existem Switches avançados que atuam na camada de rede.

# Referencias:

https://www.cloudflare.com/pt-br/learning/network-layer/what-is-a-lan/#:~:text=LAN%20significa%20rede%20local.,geogr%C3%A1fica%2C%20geralmente%20no%20mesmo%20pr%C3%A9dio.

https://techenter.com.br/o-que-e-man-metropolitan-area-network/

https://www.fortinet.com/br/resources/cyberglossary/wan

FONTE: https://pt.wikipedia.org/wiki/TCP/IP
FONTE: https://pt.wikipedia.org/wiki/Modelo_OSI
FONTE: https://pt.wikipedia.org/wiki/Protocolo_de_datagrama_do_usu%C3%A1rio
FONTE: https://pt.wikipedia.org/wiki/Protocolo_de_controle_de_transmiss%C3%A3o#:~:text=Protocolo%20de%20Controle%20de%20Transmiss%C3%A3o%20(do%20ingl%C3%AAs%3A%20Transmission%20Control%20Protocol,e%20sem%20erros%20via%20rede.
FONTE: https://pt.wikipedia.org/wiki/Lista_de_portas_dos_protocolos_TCP_e_UDP
http://nomundodasredes.blogspot.com/2011/05/cabecalho-do-pacote-ipv4.html