.PHONY: all run_all clean

all: run_all

run_all: run_programa1

run_programa1:
	swipl -s ../Prolog/programa1.pl -g main -t halt

# ... Repite para los demás programas hasta run_programa10

clean:
	@echo "Limpiando archivos generados..."
	# Añade comandos de limpieza si es necesario
