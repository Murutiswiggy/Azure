az group create --name RG11 --location Japaneast

az network vnet create --resource-group RG11 --name Vnet100 --location Japaneast --address-prefix 192.168.0.0/16 --subnet-name Internalsub10 --subnet-prefix 192.168.1.0/24

az network vnet subnet create -g RG11 --vnet-name Vnet100 -n Externalsub20 --address-prefixes 192.168.2.0/24

az vm create --resource-group "RG11" --name "TEST-VM" --image "Ubuntu2204" --vnet-name "Vnet100" --subnet "Internalsub10" --admin-username "azadmin" --admin-password "Password@123" --size "Standard_B1ls" --location "Japaneast"

az vm create --resource-group "RG11" --name "VM-001" --image "Ubuntu2204" --vnet-name "Vnet100" --subnet "Externalsub20" --admin-username "azadmin" --admin-password "Password@123" --size "Standard_B1ls" --location "Japaneast"
