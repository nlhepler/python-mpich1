CC=gcc -pthread
LIBDIR=
INCDIR=
LINKFORSHARE=-Xlinker -export-dynamic
MPILIBS=-lmpich++-gnu -lmpich-gnu -lbproc -lpython3.2m
LIBS=-lpthread -ldl -lutil -lm

all: python-mpi

python-mpi: python-mpi.c
	gcc -L$(LIBDIR) -I$(INCDIR) $(LINKFORSHARE) -o python-mpi python-mpi.c $(MPILIBS) $(LIBS) 
