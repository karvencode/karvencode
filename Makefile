all: server

SRCS=src/server.c
OBJS=src/server.o

INCPATH=include

.c.o :
	$(CC) -c -o $@ $< -I $(INCPATH)

server: $(OBJS)
	$(CC) $(OBJS) -o bin/server -I $(INCPATH)

clean:
	rm bin/*
	rm src/*.o
