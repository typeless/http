CFLAGS=-static -Wall -g -I./vendor/buffer/src
CFLAGS+=-I./vendor/uriparser/build/system/include/uriparser

LDFLAGS=-L./vendor/buffer/build -lbuffer
LDFLAGS+=-L./vendor/uriparser/build/system/lib -luriparser

SOURCES=$(wildcard src/**/*.c src/*.c)
OBJECTS=$(patsubst %.c,%.o,$(SOURCES))

TARGET=bin/http

all: $(TARGET)

$(TARGET): build $(OBJECTS)
	$(CC) $(LDFLAGS) -o $@ $(OBJECTS)

build:
	@mkdir -p bin

dev:CFLAGS+=-DNDEBUG
dev: all

clean:
	rm -rf bin/http src/*.o *.dSYM