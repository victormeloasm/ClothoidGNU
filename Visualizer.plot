# Configurações do gráfico
set ticslevel 0
set border 4095
set view equal xyz
set view 60, 30, 1, 1
set xlabel "X"
set ylabel "Y"
set zlabel "Z"

# Plot da clothoid dupla em 3D
splot "double_clothoid.dat" using 1:2:3 with lines

# Configurações adicionais de exibição
set grid
unset key

# Aguardar para manter o gráfico aberto
pause -1 "Pressione qualquer tecla para sair."
