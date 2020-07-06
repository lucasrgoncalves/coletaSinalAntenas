#!/bin/bash
#MONTANDO LISTA DE CLIENTES COM SINAL FRACO
date=$(date)
echo -e "" >> clientesSinalFracoRuralMK.txt
echo -e "COLETA REALIZADA EM " $date >> clientesSinalFracoRuralMK.txt
echo -e "" >> clientesSinalFracoRuralMK.txt
echo -e "    CLIENTES SINAL FRACO -79dBm - MIKROTIK " >> clientesSinalFracoRuralMK.txt ; echo "  DB       MAC DA ANTENA         POSSIVEL LOGIN" >> clientesSinalFracoRuralMK.txt; cat clientesMIKROTIK.txt | egrep -i ' -79' >> clientesSinalFracoRuralMK.txt
echo -e "" >> clientesSinalFracoRuralMK.txt
echo -e "    CLIENTES SINAL FRACO -80dBm - MIKROTIK " >> clientesSinalFracoRuralMK.txt ; echo "  DB       MAC DA ANTENA         POSSIVEL LOGIN" >> clientesSinalFracoRuralMK.txt ; cat clientesMIKROTIK.txt | egrep -i ' -80' >> clientesSinalFracoRuralMK.txt
echo -e "" >> clientesSinalFracoRuralMK.txt
echo -e "    CLIENTES SINAL FRACO -81dBm - MIKROTIK " >> clientesSinalFracoRuralMK.txt ; echo "  DB       MAC DA ANTENA         POSSIVEL LOGIN" >> clientesSinalFracoRuralMK.txt ; cat clientesMIKROTIK.txt | egrep -i ' -81' >> clientesSinalFracoRuralMK.txt
echo -e "" >> clientesSinalFracoRuralMK.txt
echo -e "    CLIENTES SINAL FRACO -82dBm - MIKROTIK " >> clientesSinalFracoRuralMK.txt ; echo "  DB       MAC DA ANTENA         POSSIVEL LOGIN" >> clientesSinalFracoRuralMK.txt ; cat clientesMIKROTIK.txt | egrep -i ' -82' >> clientesSinalFracoRuralMK.txt
echo -e "" >> clientesSinalFracoRuralMK.txt
echo -e "    CLIENTES SINAL FRACO -83dBm - MIKROTIK " >> clientesSinalFracoRuralMK.txt ; echo "  DB       MAC DA ANTENA         POSSIVEL LOGIN" >> clientesSinalFracoRuralMK.txt ; cat clientesMIKROTIK.txt | egrep -i ' -83' >> clientesSinalFracoRuralMK.txt
echo -e "" >> clientesSinalFracoRuralMK.txt
echo -e "    CLIENTES SINAL FRACO -84dBm - MIKROTIK " >> clientesSinalFracoRuralMK.txt ; echo "  DB       MAC DA ANTENA         POSSIVEL LOGIN" >> clientesSinalFracoRuralMK.txt ; cat clientesMIKROTIK.txt | egrep -i ' -84' >> clientesSinalFracoRuralMK.txt
echo -e "" >> clientesSinalFracoRuralMK.txt
echo -e "    CLIENTES SINAL FRACO -85dBm - MIKROTIK " >> clientesSinalFracoRuralMK.txt ; echo "  DB       MAC DA ANTENA         POSSIVEL LOGIN" >> clientesSinalFracoRuralMK.txt ; cat clientesMIKROTIK.txt | egrep -i ' -85' >> clientesSinalFracoRuralMK.txt
echo -e "" >> clientesSinalFracoRuralMK.txt
echo -e "    CLIENTES SINAL FRACO -86dBm - MIKROTIK " >> clientesSinalFracoRuralMK.txt ; echo "  DB       MAC DA ANTENA         POSSIVEL LOGIN" >> clientesSinalFracoRuralMK.txt ; cat clientesMIKROTIK.txt | egrep -i ' -86' >> clientesSinalFracoRuralMK.txt
echo -e "" >> clientesSinalFracoRuralMK.txt
echo -e "    CLIENTES SINAL FRACO -87dBm - MIKROTIK " >> clientesSinalFracoRuralMK.txt ; echo "  DB       MAC DA ANTENA         POSSIVEL LOGIN" >> clientesSinalFracoRuralMK.txt ; cat clientesMIKROTIK.txt | egrep -i ' -87' >> clientesSinalFracoRuralMK.txt
echo -e "" >> clientesSinalFracoRuralMK.txt
echo -e "    CLIENTES SINAL FRACO -88dBm - MIKROTIK " >> clientesSinalFracoRuralMK.txt ; echo "  DB       MAC DA ANTENA         POSSIVEL LOGIN" >>  clientesSinalFracoRuralMK.txt ; cat clientesMIKROTIK.txt | egrep -i ' -88' >> clientesSinalFracoRuralMK.txt
echo -e "" >> clientesSinalFracoRuralMK.txt
echo -e "    CLIENTES SINAL FRACO -89dBm - MIKROTIK " >> clientesSinalFracoRuralMK.txt ; echo "  DB       MAC DA ANTENA         POSSIVEL LOGIN" >> clientesSinalFracoRuralMK.txt ; cat clientesMIKROTIK.txt | egrep -i ' -89' >> clientesSinalFracoRuralMK.txt
echo -e "" >> clientesSinalFracoRuralMK.txt
echo -e "    CLIENTES SINAL FRACO -90dBm - MIKROTIK " >> clientesSinalFracoRuralMK.txt ; echo "  DB       MAC DA ANTENA         POSSIVEL LOGIN" >> clientesSinalFracoRuralMK.txt ; cat clientesMIKROTIK.txt | egrep -i ' -90' >> clientesSinalFracoRuralMK.txt
echo -e "" >> clientesSinalFracoRuralMK.txt
echo -e "    CLIENTES SINAL FRACO -91dBm - MIKROTIK " >> clientesSinalFracoRuralMK.txt ; echo "  DB       MAC DA ANTENA         POSSIVEL LOGIN" >> clientesSinalFracoRuralMK.txt ; cat clientesMIKROTIK.txt | egrep -i ' -91' >> clientesSinalFracoRuralMK.txt
echo -e "" >> clientesSinalFracoRuralMK.txt
echo -e "    CLIENTES SINAL FRACO -92dBm - MIKROTIK " >> clientesSinalFracoRuralMK.txt ; echo "  DB       MAC DA ANTENA         POSSIVEL LOGIN" >> clientesSinalFracoRuralMK.txt ; cat clientesMIKROTIK.txt | egrep -i ' -92' >> clientesSinalFracoRuralMK.txt
echo -e "" >> clientesSinalFracoRuralMK.txt

descontar=45
linhas=$(wc -l clientesSinalFracoRuralMK.txt | cut -c 1-3)
total=$(($linhas - $descontar))
echo -e "TOTAL DE CLIENTES ENCONTRADOS: " $total >> clientesSinalFracoRuralMK.txt
echo "TOTAL DE CLIENTES ENCONTRADOS: " $total
