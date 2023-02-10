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

###########################################################
#					RULES							  #
###########################################################

#Build everything
all: $(BINARY)

#Generate Binary executable
$(BINARY): $(OBJECTS)
		$(CC) -o $@ $^

#Generate object files
%.c:%.o
		$(CC) $(CFLAGS) -c -o $@ $^

#Clean repository
clean:
		rm -rf $(BINARY) $(OBJECTS)

