# Configuração de VLANs

## VLANs Definidas
- VLAN 10 → ADMINISTRACAO → 192.168.10.0/24 (gateway 192.168.10.1)
- VLAN 20 → TI             → 192.168.20.0/24 (gateway 192.168.20.1)
- VLAN 30 → VISITANTES     → 192.168.30.0/24 (gateway 192.168.30.1) [opcional]

## Switch – criação de VLANs e portas de acesso (exemplo)
```
enable
configure terminal
vlan 10
 name ADMINISTRACAO
vlan 20
 name TI
vlan 30
 name VISITANTES
! portas de acesso
interface range fa0/1-3
 switchport mode access
 switchport access vlan 10
interface range fa0/4-6
 switchport mode access
 switchport access vlan 20
! uplink/trunk para roteador ou switch de distribuição
interface g0/1
 switchport trunk encapsulation dot1q
 switchport mode trunk
end
write memory
```
