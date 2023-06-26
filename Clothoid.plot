# Parâmetros das clothoids
a = 1.0  # Parâmetro a
b = 2.0  # Parâmetro b
t_start = -10.0  # Valor inicial do parâmetro t
t_end = 10.0  # Valor final do parâmetro t
n_points = 1000  # Número de pontos a serem gerados

# Função para calcular as coordenadas x, y e z da clothoid dupla
f_x(t) = a * t * cos(t**2 / 2.0) + b * sin(t)
f_y(t) = a * t * sin(t**2 / 2.0) + b * cos(t)
f_z(t) = t

# Geração dos pontos da clothoid dupla
set table 'double_clothoid.dat'
set parametric
set urange [t_start:t_end]
set vrange [0:1]
set isosample n_points
splot f_x(u), f_y(u), f_z(u)
unset table
unset parametric
