# Configuração de DHCP (no Roteador)

## Pools de DHCP
- VLAN 10: 192.168.10.100–192.168.10.199 | gateway: 192.168.10.1 | DNS: 8.8.8.8
- VLAN 20: 192.168.20.100–192.168.20.199 | gateway: 192.168.20.1 | DNS: 8.8.8.8
- VLAN 30 (opcional): 192.168.30.100–192.168.30.199 | gateway: 192.168.30.1 | DNS: 8.8.8.8

## Exemplo de configuração no roteador
```
enable
configure terminal
! subinterfaces (se usar router-on-a-stick)
interface g0/0.10
 encapsulation dot1q 10
 ip address 192.168.10.1 255.255.255.0
interface g0/0.20
 encapsulation dot1q 20
 ip address 192.168.20.1 255.255.255.0
interface g0/0.30
 encapsulation dot1q 30
 ip address 192.168.30.1 255.255.255.0

! DHCP pools
ip dhcp excluded-address 192.168.10.1 192.168.10.99
ip dhcp excluded-address 192.168.20.1 192.168.20.99
ip dhcp excluded-address 192.168.30.1 192.168.30.99
ip dhcp pool VLAN10
 network 192.168.10.0 255.255.255.0
 default-router 192.168.10.1
 dns-server 8.8.8.8
ip dhcp pool VLAN20
 network 192.168.20.0 255.255.255.0
 default-router 192.168.20.1
 dns-server 8.8.8.8
ip dhcp pool VLAN30
 network 192.168.30.0 255.255.255.0
 default-router 192.168.30.1
 dns-server 8.8.8.8
end
write memory
```
