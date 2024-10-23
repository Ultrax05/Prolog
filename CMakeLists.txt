cmake_minimum_required(VERSION 3.0)
project(PrologPrograms)

# Incluir todos los archivos Prolog
file(GLOB PROLOG_FILES "${CMAKE_SOURCE_DIR}/*.pl")

# Agregar un comando personalizado para ejecutar cada programa
foreach(prolog_file ${PROLOG_FILES})
    add_custom_target(run_${prolog_file}
        COMMAND swipl -s ${prolog_file} -g main -t halt
        WORKING_DIRECTORY ${CMAKE_SOURCE_DIR}
    )
endforeach()