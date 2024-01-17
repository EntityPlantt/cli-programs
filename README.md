# More Bash
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
sudo make install # default path: /usr/local/bin
make clean # Remove compile directory
```

## Contribuiting
Let's say you want to contribuite with `example` program.  
Fork this repo whlist adding `src/example.cpp` and coding your program.  
The program should work on all operating systems, and should be made to accept command-line parameters.  
Files can be only C++.

Open a PR with title `[Program] example: <brief description>` and with the *Program* template.  
Fill everything inside and send the PR.  
I'm mostly active so you should get a response in at most 24 hours *(subject exposed to changes :D)*