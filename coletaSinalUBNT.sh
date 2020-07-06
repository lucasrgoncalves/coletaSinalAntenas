#!/bin/bash
#DESENVOLVIDO POR LUCAS ROCHA GONCALVES EM 07/2020.

#GERANDO ARQUIVO TEMPORARIO PARA CONSEGUIR PERCORRER IP POR IP DENTRO DO LACO DE REPETICAO
cp IPSubiquiti.txt IPStempUbiquiti.txt

#DESCOBRINDO A QTDE DE IPS DO ARQUIVO PARA INICIAR A ESTRUTURA DE REPETICAO
qtdeIPSubiquiti=$(wc -l IPSubiquiti.txt | cut -c 1-2)

#INICIANDO REPETICAO PARA RODAR O COMANDO SNMP EM CADA IP DA LISTA TEMPORARIA DE IPS
i=1
echo "TOTAL DE IPS A SEREM VERIFICADOS:  "$qtdeIPSubiquiti
while [ $i -le $qtdeIPSubiquiti ]
do
        imprime=$(head -n 1 IPStempUbiquiti.txt)
        IP=$imprime
        echo "" >> nameClientes.txt
        echo " POSSIVEL LOGIN     - IP DO AP:  " $IP >> nameClientes.txt
        echo "" >> dbsClientes.txt
        echo "  DB" >> dbsClientes.txt
        echo "" >> macClientes.txt
        echo "   MAC DA ANTENA" >> macClientes.txt

        snmpwalk -v1 -c snmp-totalvia $IP enterprises.41112.1.4.7.1.2 | grep ^S | cut -d: -f4 >> nameClientes.txt
        snmpwalk -v1 -c snmp-totalvia $IP enterprises.41112.1.4.7.1.3 | grep ^S | cut -d: -f4 >> dbsClientes.txt
        snmpwalk -v1 -c snmp-totalvia $IP enterprises.41112.1.4.7.1.1 | grep ^S | cut -d: -f4 >> macClientes.txt
        echo "AP "$IP "VERIFICADO COM SUCESSO!"
        removeIP=$(sed -i 1d IPStempUbiquiti.txt)
        i=$((i+1))
done

#FAZENDO BACKUP DO ARQUIVO clientesUBNT.txt ANTES DE GRAVAR NOVOS DADOS
cp clientesUBNT.txt clientesUBNT.txt.bkp

#GERANDO LISTA DE CLIENTES DO AP
paste  dbsClientes.txt macClientes.txt nameClientes.txt > clientesUBNT.txt

echo -e "LISTA DE CLIENTES GERADA COM SUCESSO!!!"

#BACKUP DOS ARQUIVOS EXISTENTES
mv clientesSinalFracoRuralUBNT.txt clientesSinalFracoRuralUBNT.txt.bkp

#REMOVENDO ARQUIVOS DESNECESSARIOS
rm IPStempUbiquiti.txt nameClientes.txt dbsClientes.txt macClientes.txt

listaClientes=$(./buscaSinalFracoUBNT.sh)

echo $listaClientes
