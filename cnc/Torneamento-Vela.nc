(_$Lathe_)
(_$Milimeters_)
(_Torneamento da Peça - Artur Ferreira Gonçalves_)
$AddRegPart 1

%
01000

(_=== INICIALIZAÇÃO DO SISTEMA ===_)
N10 G18 G40 G95 G90 G54  ; Plano ZX, cancela compensações, avanço/rotação, absoluto, offset 1
N15 G92 Z128              ; Define posição de referência Z
N20 T08 M06               ; Seleciona ferramenta 8 e troca
N25 G96 S2000             ; Velocidade de corte constante 200 m/min
N30 M04                   ; Liga eixo no sentido horário

(_=== OPERAÇÃO DE BALECEAMENTO ===_)
N35 G00 Z2                ; Posiciona a 2mm da face
N40 G00 X30               ; Posiciona em X30 (fora do diâmetro)
N45 G00 Z0                ; Posiciona na face Z0
N50 G01 X23 F200          ; Faceamento até X23
N55 G01 Z-100 F200        ; Usinagem longitudinal até Z-100
N60 G00 X30               ; Retirada radial
N65 G00 Z2                ; Retorna para Z2
N70 G00 X0                ; Posiciona no centro X0

(_=== OPERAÇÃO DE DESBASTE ===_)

(_--- Desbaste do Raio ---_)
N75 G00 X30               ; Posiciona em X30
N80 G00 Z-2               ; Posiciona em Z-2
N85 G01 X15 F450          ; Desbaste radial até X15
N90 G00 X30               ; Retirada radial
N95 G00 Z-4               ; Avança para Z-4
N100 G01 X15 F450         ; Desbaste radial
N105 G00 X30              ; Retirada radial
N110 G00 Z-6              ; Avança para Z-6
N115 G01 X15 F450         ; Desbaste radial
N120 G00 X30              ; Retirada radial
N125 G00 Z-8              ; Avança para Z-8
N130 G01 X15 F450         ; Desbaste radial
N135 G00 X30              ; Retirada radial
N140 G00 Z-10             ; Avança para Z-10
N145 G01 X15 F450         ; Desbaste radial
N150 G02 X5 Z0 R10        ; Interpolação circular para raio R10

(_--- Desbaste dos Vales e Cristas ---_)
(_1° Conjunto de Ranhuras_)
N155 G00 X30              ; Retorna para X30
N160 G00 Z-10             ; Posiciona em Z-10
N165 G00 X23              ; Posiciona em X23
N170 G01 Z-20 F450        ; Usinagem longitudinal até Z-20
N175 G01 X17 F450         ; Ranhurada radial até X17
N180 G00 X30              ; Retirada radial
N185 G00 X23              ; Retorna para X23
N190 G00 Z-22             ; Avança para próxima ranhura Z-22
N195 G01 X17 F450         ; Ranhurada radial
(_... continuação das ranhuras ..._)
N200 G00 X30
N205 G00 X23
N210 G00 Z-24
N215 G01 X17 F450
N220 G00 X30
N225 G00 X23
N230 G00 Z-26
N235 G01 X17 F450
N240 G00 X30
N245 G00 X23
N250 G00 Z-28
N255 G01 X17 F450
N260 G00 X30
N265 G00 X23
N270 G00 Z-30
N275 G01 X17 F450

(_2° Conjunto de Ranhuras_)
N280 G00 X30 
N285 G00 X23 
N290 G01 Z-40 F450        ; Usinagem longitudinal até Z-40
N295 G01 X17 F450         ; Ranhurada radial
(_... continuação das ranhuras ..._)
N300 G00 X30
N305 G00 X23
N310 G00 Z-42
N315 G01 X17 F450
N320 G00 X30
N325 G00 X23
N330 G00 Z-44
N335 G01 X17 F450
N340 G00 X30
N345 G00 X23
N350 G00 Z-46
N355 G01 X17 F450
N360 G00 X30
N365 G00 X23
N370 G00 Z-48
N375 G01 X17 F450
N380 G00 X30
N385 G00 X23
N390 G00 Z-50
N395 G01 X17 F450

(_3° Conjunto de Ranhuras_)
N400 G00 X30
N405 G00 X23 
N410 G01 Z-60 F450        ; Usinagem longitudinal até Z-60
N415 G01 X17 F450         ; Ranhurada radial
(_... continuação das ranhuras ..._)
N420 G00 X30
N425 G00 X23
N430 G00 Z-62
N435 G01 X17 F450
N440 G00 X30
N445 G00 X23
N450 G00 Z-64
N455 G01 X17 F450
N460 G00 X30
N465 G00 X23
N470 G00 Z-66
N475 G01 X17 F450
N480 G00 X30
N485 G00 X23
N490 G00 Z-68
N495 G01 X17 F450
N500 G00 X30
N505 G00 X23
N510 G00 Z-70
N515 G01 X17 F450

(_--- Desbaste do Chanfro ---_)
N520 G00 X18              ; Posiciona para chanfro
N525 G01 X21 Z-75         ; Usinagem do chanfro
N530 G01 Z-80             ; Continua usinagem longitudinal
N535 G00 X30              ; Retirada radial
N540 G01 X23 F450         ; Posiciona em X23
N545 G01 X23 Z-100 F450   ; Usinagem final até Z-100

(_=== OPERAÇÃO DE ACABAMENTO ===_)

(_--- Acabamento do Raio ---_)
N550 G00 X30              ; Posiciona em X30
N555 G00 Z0               ; Posiciona na face Z0
N560 G01 X5 F200          ; Avanço para início do raio
N565 G03 X15 Z-10 R10     ; Interpolação circular de acabamento R10

(_--- Acabamento dos Vales e Cristas ---_)
(_1° Conjunto - Acabamento_)
N570 G00 X30
N575 G00 Z-10 
N580 G00 X22
N585 G01 Z-20 F200        ; Acabamento longitudinal
N590 G01 X16 F200         ; Acabamento radial
(_... continuação do acabamento ..._)
N595 G00 X30
N600 G00 X22
N605 G00 Z-22
N610 G01 X16 F200
N615 G00 X30
N620 G00 X22
N625 G00 Z-24
N630 G01 X16 F200
N635 G00 X30
N640 G00 X22
N645 G00 Z-26
N650 G01 X16 F200
N655 G00 X30
N660 G00 X22
N665 G00 Z-28
N670 G01 X16 F200
N675 G00 X30
N680 G00 X22
N685 G00 Z-30
N690 G01 X16 F200

(_2° Conjunto - Acabamento_)
N695 G00 X30 
N700 G00 X22 
N705 G01 Z-40 F200        ; Acabamento longitudinal
N710 G01 X16 F200         ; Acabamento radial
(_... continuação do acabamento ..._)
N715 G00 X30
N720 G00 X22
N725 G00 Z-42
N730 G01 X16 F200
N735 G00 X30
N740 G00 X22
N745 G00 Z-44
N750 G01 X16 F200
N755 G00 X30
N760 G00 X22
N765 G00 Z-46
N770 G01 X16 F200
N775 G00 X30
N780 G00 X22
N785 G00 Z-48
N790 G01 X16 F200
N795 G00 X30
N800 G00 X22
N805 G00 Z-50
N810 G01 X16 F200

(_3° Conjunto - Acabamento_)
N815 G00 X30
N820 G00 X22 
N825 G01 Z-60 F200        ; Acabamento longitudinal
N830 G01 X16 F200         ; Acabamento radial
(_... continuação do acabamento ..._)
N835 G00 X30
N840 G00 X22
N845 G00 Z-62
N850 G01 X16 F200
N855 G00 X30
N860 G00 X22
N865 G00 Z-64
N870 G01 X16 F200
N875 G00 X30
N880 G00 X22
N885 G00 Z-66
N890 G01 X16 F200
N895 G00 X30
N900 G00 X22
N905 G00 Z-68
N910 G01 X16 F200
N915 G00 X30
N920 G00 X22
N925 G00 Z-70
N930 G01 X16 F200

(_--- Acabamento do Chanfro ---_)
N935 G00 X17              ; Posiciona para chanfro de acabamento
N940 G01 X20 Z-75 F200    ; Acabamento do chanfro
N945 G01 Z-80             ; Continua acabamento longitudinal
N950 G00 X30              ; Retirada radial
N955 G01 X22 F200         ; Posiciona em X22
N960 G01 Z-100 F200       ; Acabamento final até Z-100

(_=== FACEAMENTO FINAL ===_)
N965 G00 X30              ; Posiciona em X30
N970 G00 Z-2            ; Posiciona na face Z-2
N975 G01 X0 F200          ; Faceamento final até centro
N980 G00 Z2               ; Retira para Z2

(_=== FINALIZAÇÃO DO PROGRAMA ===_)
N985 M05                  ; Desliga o eixo
N990 M30                  ; Fim do programa e retorno ao início
%


