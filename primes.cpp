#include <iostream>
#include <vector>
#include <chrono>

bool isPrime(long n) {
    if (n <= 1) return false;

    // Це "гаряче" місце (hotspot) нашої програми
    for (long i = 2; i <= n / 2; ++i) {
        if (n % i == 0) {
            return false;
        }
    }
    return true;
}

int main(int argc, char* argv[]) {
    if (argc != 2) {
        std::cerr << "Використання: " << argv[0] << " <n>" << std::endl;
        return 1;
    }

    long n_limit = 0;
    try {
        n_limit = std::stol(argv[1]);
    } catch (const std::exception& e) {
        std::cerr << "Не вдалося перетворити '" << argv[1] << "' на число." << std::endl;
        return 1;
    }

    std::vector<long> primes;
    auto start = std::chrono::high_resolution_clock::now();

    for (long i = 2; i <= n_limit; ++i) {
        if (isPrime(i)) {
            primes.push_back(i);
        }
    }

    auto end = std::chrono::high_resolution_clock::now();
    std::chrono::duration<double> diff = end - start;

    std::cout << "Знайдено " << primes.size() << " простих чисел до " << n_limit << "." << std::endl;
    std::cout << "Витрачено часу: " << diff.count() << " секунд." << std::endl;

    return 0;
}