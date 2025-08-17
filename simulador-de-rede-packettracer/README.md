# Projeto: Simulador de Rede Empresarial (Packet Tracer)

Este projeto simula a infraestrutura de rede de uma **empresa fictícia de tecnologia (TechSolutions Ltda.)**, 
criado no **Cisco Packet Tracer** e documentado para estudos de **VLANs, DHCP, roteamento e acesso remoto (SSH)**.

## 🎯 Objetivos
- Segmentar a rede por **VLANs** (Administração e TI; Wi-Fi Visitantes opcional).
- Distribuir endereços IP via **DHCP**.
- Permitir **roteamento entre VLANs**.
- Habilitar **SSH** para administração segura de dispositivos.
- Documentar todo o ambiente para portfólio.

## 🧱 Topologia (visão geral)
- 1 **Roteador** (gateway entre VLANs)
- 2 **Switches** (acesso por departamento)
- 1 **Servidor** (DHCP, DNS e Web interno)
- 6 **PCs** + 2 **Notebooks**
- 1 **Impressora de Rede**
- (Opcional) **Access Point** para VLAN de Visitantes

## 📁 Estrutura do repositório
```
simulador-de-rede-packettracer/
├── README.md
├── topologia.pkt
├── docs/
│   ├── descricao-projeto.md
│   ├── configuracao-vlan.md
│   ├── configuracao-dhcp.md
│   ├── configuracao-acesso-remoto.md
│   └── diagrama-rede.png
├── scripts/
│   ├── comandos-switch.txt
│   ├── comandos-router.txt
│   └── comandos-servidor.txt
└── assets/
    ├── logo-projeto.png
    └── capturas/
        ├── vlan-config.png
        ├── dhcp-config.png
        └── ping-test.png
```

## 🚀 Como usar
1. Abra o **Cisco Packet Tracer** e carregue `topologia.pkt` (arquivo inicial vazio para você montar).
2. Siga a documentação em `docs/` e aplique os **scripts** de `scripts/` nos dispositivos.
3. Atualize as **capturas de tela** em `assets/capturas/` e substitua os placeholders.

## 📌 Observação
O arquivo `topologia.pkt` foi incluído como **placeholder**. Monte sua topologia e salve por cima dele.
