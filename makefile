.PHONY: all run_all clean

all: run_all

run_all: $(addprefix run_programa, $(seq_1_25)) $(addprefix run_programa, $(seq_30_34)) $(addprefix run_programa, $(seq_38_38))

seq_1_25 := $(shell seq 1 25)
seq_30_34 := $(shell seq 30 34)
seq_38_38 := $(shell seq 38 38)

run_programa%:
	swipl -s ../Prolog/Programa1.pl -g main -t halt -c $*

# ... Repite para los demás programas hasta run_programa10

clean:
	@echo "Limpiando archivos generados..."
	# Añade comandos de limpieza si es necesario
