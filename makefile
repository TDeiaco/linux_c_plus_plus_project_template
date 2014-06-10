#  ***  MACROS
#.SUFFIXES: .cpp

PROJ=enter_project_name_here

CC=g++
CFLAGS=-std=c++11 -I"usr/include" 

OBJECTS= main.o
LIBS= \
      -L"usr/lib"

all:  $(PROJ) run

$(PROJ): $(OBJECTS)

	$(CC) -o $(PROJ) $(OBJECTS) $(LIBS) 

%.o : %.cpp 
	$(CC) $(CFLAGS) -c $<

clean:
	-rm -f *.o
run:
	./$(PROJ) &
