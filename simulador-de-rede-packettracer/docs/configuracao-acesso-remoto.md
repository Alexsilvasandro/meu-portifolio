# Configuração de Acesso Remoto Seguro (SSH)

## Switch/Roteador – exemplo
```
enable
configure terminal
hostname CORE-1
ip domain-name techsolutions.local
crypto key generate rsa
 1024
line vty 0 4
 transport input ssh
 login local
username admin privilege 15 secret SenhaForte123
service password-encryption
end
write memory
```
