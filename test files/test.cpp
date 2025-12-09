// Once upon a time... C++ example
#include <iostream>
#include <vector>
#include <string>

struct Vampire {
    std::string location;
    int birth;
    int death;
    std::vector<std::string> weaknesses;
    int age() const { return death - birth; }
};

int main() {
    Vampire d{"Transylvania", 1428, 1476, {"Sunlight", "Garlic"}};
    std::cout << d.location << " age: " << d.age() << std::endl;
    for (const auto &w : d.weaknesses) std::cout << " - " << w << std::endl;
    return 0;
}
