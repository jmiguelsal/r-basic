# 1
segundos_t = 2.50e8

minutos_t = segundos_t%/%60
segundos = segundos_t%%60

horas_t = minutos_t%/%60
minutos = minutos_t%%60

dias_t = horas_t%/%24
horas = horas_t%%24

years_t = dias_t%/%365
dias = dias_t%%365

year = 2018 + years_t

# 2018
dias_t = dias_t-365

# 2019
dias_t = dias_t-365

# 2020
dias_t = dias_t-366

# 2021
dias_t = dias_t-365

# 2022
dias_t = dias_t-365

# 2023
dias_t = dias_t-365

# 2024
dias_t = dias_t-366

ultimos_dias = 365-dias_t

dia = 31-ultimos_dias

mes = 12

sprintf("%i/%i/%i %i:%i:%i", year, mes, dia, horas, minutos, segundos)

# 2
func = function(a,b,c){
  (c-b)/a
}
func(2,4,0)
func(5,3,0)
func(7,4,18)
func(1,1,1)

# 3
round(3*exp(1)-pi,3)

round(Mod((2+3i)^2/(5+8i)),3)
