dest ?= $$HOME/.local/bin
SOURCES := $(wildcard src/*.cpp)
EXECUTABLES := $(patsubst src/%.cpp,dist/%,$(SOURCES))
DEST_EXEC := $(patsubst dist/%,$(dest)/%,$(EXECUTABLES))

# Commands
all compile create make comp a c: $(EXECUTABLES)
clean decompile uncompile uncomp decomp ac dc:
	rm -r dist
install i in ins inst insta instal add: $(DEST_EXEC)
uninstall u un uni unin unins uninst uninsta r re rem remo remov remove:
	read -a rmfiles <<< "$(DEST_EXEC)"; for i in "$${rmfiles[@]}"; do rm "$$i"; done
# File creators
dist/%: src/%.cpp dist
	g++ $< -o $@ -O1
$(dest):
	mkdir $(dest)
dist:
	mkdir dist
$(dest)/%: dist/% $(dest)
	cp --remove-destination $< $@