#!/bin/bash
#MONTANDO LISTA DE CLIENTES COM SINAL FRACO
date=$(date)
echo -e "" >> clientesSinalFracoRuralUBNT.txt
echo -e "COLETA REALIZADA EM " $date >> clientesSinalFracoRuralUBNT.txt
echo -e "" >> clientesSinalFracoRuralUBNT.txt
echo -e "    CLIENTES SINAL FRACO -79dBm - UBIQUITI " >> clientesSinalFracoRuralUBNT.txt ; echo "  DB       MAC DA ANTENA         POSSIVEL LOGIN" >> clientesSinalFracoRuralUBNT.txt; cat clientesUBNT.txt | egrep -i ' -79' >> clientesSinalFracoRuralUBNT.txt
echo -e "" >> clientesSinalFracoRuralUBNT.txt
echo -e "    CLIENTES SINAL FRACO -80dBm - UBIQUITI " >> clientesSinalFracoRuralUBNT.txt ; echo "  DB       MAC DA ANTENA         POSSIVEL LOGIN" >> clientesSinalFracoRuralUBNT.txt ; cat clientesUBNT.txt | egrep -i ' -80' >> clientesSinalFracoRuralUBNT.txt
echo -e "" >> clientesSinalFracoRuralUBNT.txt
echo -e "    CLIENTES SINAL FRACO -81dBm - UBIQUITI " >> clientesSinalFracoRuralUBNT.txt ; echo "  DB       MAC DA ANTENA         POSSIVEL LOGIN" >> clientesSinalFracoRuralUBNT.txt ; cat clientesUBNT.txt | egrep -i ' -81' >> clientesSinalFracoRuralUBNT.txt
echo -e "" >> clientesSinalFracoRuralUBNT.txt
echo -e "    CLIENTES SINAL FRACO -82dBm - UBIQUITI " >> clientesSinalFracoRuralUBNT.txt ; echo "  DB       MAC DA ANTENA         POSSIVEL LOGIN" >> clientesSinalFracoRuralUBNT.txt ; cat clientesUBNT.txt | egrep -i ' -82' >> clientesSinalFracoRuralUBNT.txt
echo -e "" >> clientesSinalFracoRuralUBNT.txt
echo -e "    CLIENTES SINAL FRACO -83dBm - UBIQUITI " >> clientesSinalFracoRuralUBNT.txt ; echo "  DB       MAC DA ANTENA         POSSIVEL LOGIN" >> clientesSinalFracoRuralUBNT.txt ; cat clientesUBNT.txt | egrep -i ' -83' >> clientesSinalFracoRuralUBNT.txt
echo -e "" >> clientesSinalFracoRuralUBNT.txt
echo -e "    CLIENTES SINAL FRACO -84dBm - UBIQUITI " >> clientesSinalFracoRuralUBNT.txt ; echo "  DB       MAC DA ANTENA         POSSIVEL LOGIN" >> clientesSinalFracoRuralUBNT.txt ; cat clientesUBNT.txt | egrep -i ' -84' >> clientesSinalFracoRuralUBNT.txt
echo -e "" >> clientesSinalFracoRuralUBNT.txt
echo -e "    CLIENTES SINAL FRACO -85dBm - UBIQUITI " >> clientesSinalFracoRuralUBNT.txt ; echo "  DB       MAC DA ANTENA         POSSIVEL LOGIN" >> clientesSinalFracoRuralUBNT.txt ; cat clientesUBNT.txt | egrep -i ' -85' >> clientesSinalFracoRuralUBNT.txt
echo -e "" >> clientesSinalFracoRuralUBNT.txt
echo -e "    CLIENTES SINAL FRACO -86dBm - UBIQUITI " >> clientesSinalFracoRuralUBNT.txt ; echo "  DB       MAC DA ANTENA         POSSIVEL LOGIN" >> clientesSinalFracoRuralUBNT.txt ; cat clientesUBNT.txt | egrep -i ' -86' >> clientesSinalFracoRuralUBNT.txt
echo -e "" >> clientesSinalFracoRuralUBNT.txt
echo -e "    CLIENTES SINAL FRACO -87dBm - UBIQUITI " >> clientesSinalFracoRuralUBNT.txt ; echo "  DB       MAC DA ANTENA         POSSIVEL LOGIN" >> clientesSinalFracoRuralUBNT.txt ; cat clientesUBNT.txt | egrep -i ' -87' >> clientesSinalFracoRuralUBNT.txt
echo -e "" >> clientesSinalFracoRuralUBNT.txt
echo -e "    CLIENTES SINAL FRACO -88dBm - UBIQUITI " >> clientesSinalFracoRuralUBNT.txt ; echo "  DB       MAC DA ANTENA         POSSIVEL LOGIN" >>  clientesSinalFracoRuralUBNT.txt ; cat clientesUBNT.txt | egrep -i ' -88' >> clientesSinalFracoRuralUBNT.txt
echo -e "" >> clientesSinalFracoRuralUBNT.txt
echo -e "    CLIENTES SINAL FRACO -89dBm - UBIQUITI " >> clientesSinalFracoRuralUBNT.txt ; echo "  DB       MAC DA ANTENA         POSSIVEL LOGIN" >> clientesSinalFracoRuralUBNT.txt ; cat clientesUBNT.txt | egrep -i ' -89' >> clientesSinalFracoRuralUBNT.txt
echo -e "" >> clientesSinalFracoRuralUBNT.txt
echo -e "    CLIENTES SINAL FRACO -90dBm - UBIQUITI " >> clientesSinalFracoRuralUBNT.txt ; echo "  DB       MAC DA ANTENA         POSSIVEL LOGIN" >> clientesSinalFracoRuralUBNT.txt ; cat clientesUBNT.txt | egrep -i ' -90' >> clientesSinalFracoRuralUBNT.txt
echo -e "" >> clientesSinalFracoRuralUBNT.txt
echo -e "    CLIENTES SINAL FRACO -91dBm - UBIQUITI " >> clientesSinalFracoRuralUBNT.txt ; echo "  DB       MAC DA ANTENA         POSSIVEL LOGIN" >> clientesSinalFracoRuralUBNT.txt ; cat clientesUBNT.txt | egrep -i ' -91' >> clientesSinalFracoRuralUBNT.txt
echo -e "" >> clientesSinalFracoRuralUBNT.txt
echo -e "    CLIENTES SINAL FRACO -92dBm - UBIQUITI " >> clientesSinalFracoRuralUBNT.txt ; echo "  DB       MAC DA ANTENA         POSSIVEL LOGIN" >> clientesSinalFracoRuralUBNT.txt ; cat clientesUBNT.txt | egrep -i ' -92' >> clientesSinalFracoRuralUBNT.txt
echo -e "" >> clientesSinalFracoRuralUBNT.txt

descontar=45
linhas=$(wc -l clientesSinalFracoRuralUBNT.txt | cut -c 1-3)
total=$(($linhas - $descontar))
echo -e "TOTAL DE CLIENTES ENCONTRADOS: " $total >> clientesSinalFracoRuralUBNT.txt
echo "TOTAL DE CLIENTES ENCONTRADOS: " $total
