#include <iostream>
#include <fstream>
#include <string>

int main() {
    std::ifstream file("CMakeLists.txt");
    std::string line;
    while (std::getline(file, line)) {
        line = std::getline(file, line);
        printf(line.c_str());
    }
    file.close();
    return 0;
}
