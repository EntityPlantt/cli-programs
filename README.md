# cli-programs
More command-line utilities for **Windows**, **Linux** and *(probably)* **MacOS**. Written in C++, packed with a Makefile to compile these in `dist`.

## Example
```bash
echo "Hello!" > file.txt
length file.txt # 7, counts null at the end
echo "Hello!" | length # 7
sha file.txt # b22b009134622b6508d756f1062455d71a7026594eacb0badf81f4f677929ebe
cat file.txt | sha # b22b009134622b6508d756f1062455d71a7026594eacb0badf81f4f677929ebe
```

## Building
```bash
make # Compile to /dist
make install dest=$destination # Compile & install
make install # default path: ~/.local/bin
make clean # Remove compile directory
make uninstall dest=$destination # Uninstall from directory
make uninstall # Uninstall from ~/.local/bin
```

## Contribuiting
See `CONTRIBUTING.md`