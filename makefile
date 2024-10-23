# Makefile

# Definición de las secuencias
seq_1_13 := $(shell seq 1 13)
seq_14_25 := $(shell seq 14 25)
seq_30_34 := $(shell seq 30 34)
seq_38_38 := $(shell seq 38 38)

# Objetivo principal
all: run_all

# Objetivo que ejecuta todos los programas
run_all: $(addprefix run_programa, $(seq_1_13)) $(addprefix run_programa, $(seq_14_25)) $(addprefix run_programa, $(seq_30_34)) $(addprefix run_programa, $(seq_38_38))

# Regla para ejecutar los programas
run_programa%:
	swipl -s ../Prolog/Programa$(subst run_programa,,$@).pl -g main -t halt

.PHONY: all run_all run_programa% clean

# Objetivo para limpiar archivos generados
clean:
	@echo "Limpiando archivos generados..."
	# Añade comandos de limpieza si es necesario
