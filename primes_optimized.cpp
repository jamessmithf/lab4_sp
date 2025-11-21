#include <iostream>
#include <vector>
#include <chrono>
#include <immintrin.h>
#include <cmath>

bool isPrime_AVX(long long n) {
    if (n <= 1) return false;
    if (n == 2) return true;
    if (n % 2 == 0) return false;

    long long limit = std::sqrt((long double)n);

    for (long long i = 3; i <= limit; i += 16) {
        __m256i divisors = _mm256_setr_epi32(i, i+2, i+4, i+6, i+8, i+10, i+12, i+14);
        if (i > limit) break;

        __m256 div_f = _mm256_cvtepi32_ps(divisors);
        __m256 n_f   = _mm256_set1_ps((float)n);
        __m256 quot_f = _mm256_div_ps(n_f, div_f);
        quot_f = _mm256_floor_ps(quot_f);
        __m256i quot_i = _mm256_cvttps_epi32(quot_f);
        __m256i prod   = _mm256_mullo_epi32(quot_i, divisors);
        __m256i n_i    = _mm256_set1_epi32((int)n);
        __m256i rem    = _mm256_sub_epi32(n_i, prod);
        __m256i zeros = _mm256_setzero_si256();
        __m256i cmp   = _mm256_cmpeq_epi32(rem, zeros);

        int mask = _mm256_movemask_epi8(cmp);
        if (mask != 0) return false;
    }

    long long start_cleanup = (limit > 16) ? (limit - 16) : 3;
    if (start_cleanup < 3) start_cleanup = 3;
    for (long long i = start_cleanup; i <= limit; i += 2) {
        if (n % i == 0 && i != n) return false;
    }
    return true;
}

int main(int argc, char* argv[]) {
    if (argc != 2) {
        std::cerr << "Usage: " << argv[0] << " <n>" << std::endl;
        return 1;
    }
    long n_limit = std::stol(argv[1]);
    std::vector<long> primes;
    auto start = std::chrono::high_resolution_clock::now();

    for (long i = 2; i <= n_limit; ++i) {
        if (isPrime_AVX(i)) {
            primes.push_back(i);
        }
    }
    auto end = std::chrono::high_resolution_clock::now();
    std::chrono::duration<double> diff = end - start;
    std::cout << "Знайдено " << primes.size() << " простих чисел до " << n_limit << "." << std::endl;
    std::cout << "Витрачено часу: " << diff.count() << " секунд." << std::endl;
    return 0;
}