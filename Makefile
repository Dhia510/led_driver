###########################################################
#					VARIABLES							  #
###########################################################

#Compiler
CC=gcc
#Include Directory
INCDIRS=-I.
#Optimisation flag
OPT=
#C flags
CFLAGS=-Wall -Wextra -g $(INCDIRS) $(OPT)
#List of .c files
CFILES=gpio.c main.C
#list of object files
OBJECTS=gpio.o main.o
#Binary name
BINARY=bin
