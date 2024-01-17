dest ?= /usr/local/bin
SOURCES := $(wildcard src/*.cpp)
EXECUTABLES := $(patsubst src/%.cpp,dist/%,$(SOURCES))
DEST_EXEC := $(patsubst dist/%,$(dest)/%,$(EXECUTABLES))

all: $(EXECUTABLES)
clean:
	rm -r dist
install: $(DEST_EXEC)

dist/%: src/%.cpp dist
	g++ $< -o $@ -O1
$(dest):
	mkdir $(dest)
dist:
	mkdir dist
$(dest)/%: dist/% $(dest)
	cp $< $@