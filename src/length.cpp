#include <bits/stdc++.h>
using namespace std;
int main(int argc, char** argv) {
	freopen(argc == 1 ? nullptr : argv[1], "rb", stdin);
	if (ferror(stdin)) throw runtime_error(strerror(errno));
	size_t len;
	array <char, 1024> buf;
	vector <char> input;
	while((len = fread(buf.data(), 1, buf.size(), stdin)) > 0) {
		if(ferror(stdin) && !feof(stdin))
			throw runtime_error(strerror(errno));
		input.insert(input.end(), buf.data(), buf.data() + len);
	}
	cout << input.size() << endl;
	return 0;
}