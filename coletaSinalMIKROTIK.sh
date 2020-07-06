#!/bin/bash
#DESENVOLVIDO POR LUCAS ROCHA GONCALVES EM 07/2020.

#GERANDO ARQUIVO TEMPORARIO PARA CONSEGUIR PERCORRER IP POR IP DENTRO DO LACO DE REPETICAO
cp IPSmikrotik.txt IPStempMikrotik.txt

#DESCOBRINDO A QTDE DE IPS DO ARQUIVO PARA INICIAR A ESTRUTURA DE REPETICAO
qtdeIPSmikrotik=$(wc -l IPSmikrotik.txt | cut -c 1-2)

#INICIANDO REPETICAO PARA RODAR O COMANDO SNMP EM CADA IP DA LISTA TEMPORARIA DE IPS
i=1
echo "TOTAL DE IPS A SEREM VERIFICADOS:  "$qtdeIPSmikrotik
while [ $i -le $qtdeIPSmikrotik ]
do
        imprime=$(head -n 1 IPStempMikrotik.txt)
        IP=$imprime
        echo "" >> dbsClientesMK.txt
        echo "  DB" >> dbsClientesMK.txt
        echo "" >> macClientesMK.txt
        echo "   MAC DA ANTENA" >> macClientesMK.txt

        echo "DADOS DO AP MIKROTIK QUE POSSUI O IP " $IP >> dbsClientesMK.txt
        echo "DADOS DO AP MIKROTIK QUE POSSUI O IP " $IP >> macClientesMK.txt

        snmpwalk -v2c -c snmp-totalvia $IP 1.3.6.1.4.1.14988.1.1.1.2.1.3 | grep ^S | cut -d: -f4 >> dbsClientesMK.txt
        snmpwalk -v2c -c snmp-totalvia $IP 1.3.6.1.4.1.14988.1.1.1.2.1.1 | grep ^S | cut -d: -f4 >> macClientesMK.txt
        echo "AP "$IP "VERIFICADO COM SUCESSO!"
        removeIP=$(sed -i 1d IPStempMikrotik.txt)
        i=$((i+1))
done

#FAZENDO BACKUP DO ARQUIVO clientesUBNT.txt ANTES DE GRAVAR NOVOS DADOS
cp clientesMIKROTIK.txt clientesMIKROTIK.txt.bkp

#GERANDO LISTA DE CLIENTES DO AP
paste dbsClientesMK.txt macClientesMK.txt > clientesMIKROTIK.txt

echo -e "LISTA DE CLIENTES GERADA COM SUCESSO!!!"

#BACKUP DOS ARQUIVOS EXISTENTES
mv clientesSinalFracoRuralMK.txt clientesSinalFracoRuralMK.txt.bkp

#REMOVENDO ARQUIVOS DESNECESSARIOS
rm IPStempMikrotik.txt dbsClientesMK.txt macClientesMK.txt

listaClientes=$(./buscaSinalFracoMK.sh)

echo $listaClientes