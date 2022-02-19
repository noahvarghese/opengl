CC = gcc
LINKS = -lGL -lglfw -lX11 -lpthread -lXrandr -lXi -ldl
CFLAGS=-Werror -Wall
OUTPUT = ./output/main.o
INPUT = ./src/main.c ./src/triangle.c ./src/rectangle.c ./src/lib/glad.c
INCLUDE_PATH = ./include

build:
	clear
	echo Building executable $(OUTPUT)
	$(CC) $(CFLAGS) -o $(OUTPUT) $(INPUT) -I $(INCLUDE_PATH) $(LINKS)