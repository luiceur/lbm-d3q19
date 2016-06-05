CC=cc
CFLAGS=  #-g -Wall -pg -O2 -fopenmp #-h pl=lib
LDFLAGS = -lz -lm
BIN=lbm

src = $(wildcard *.c)
obj = $(src:.c=.o)


$(BIN): $(obj)
	$(CC) $(CFLAGS) -o $@ $^ $(LDFLAGS)

%.o: %.c
	$(CC) $(CFLAGS) -c  $<

.PHONY: clean
clean:
	rm -f $(obj) $(BIN) *~
