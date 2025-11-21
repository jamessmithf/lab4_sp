Крок 1: Побудова FlameGraph (для неоптимізованої програми)

    g++ -O0 -g primes.cpp -o primes_naive — компіляція без оптимізації з дебаг-символами;

    sudo perf record -F 99 -g ./primes_naive 300000 — запис профілю виконання (частота 99 Гц, збір стека викликів);

    sudo perf script > out.perf — конвертація бінарного логу perf у текстовий формат;

    FlameGraph/stackcollapse-perf.pl out.perf > out.folded — згортання стеків викликів для підготовки графіка;

    FlameGraph/flamegraph.pl out.folded > primes_naive.svg — генерація візуального SVG-файлу FlameGraph.

Крок 2: Збір статистики виконання

    /usr/bin/time --verbose ./primes_naive 300000 — вимір часу (User/System), використання пам'яті та перемикань контексту;

    sudo perf stat -d ./primes_naive 300000 — збір детальної апаратної статистики (інструкції, цикли, кеш-промахи, IPC);

    sudo perf report — перегляд інтерактивного звіту профілювання (розподіл часу по функціях).

Крок 3: Вимірювання енерговитрат

    sudo perf list | grep 'power/energy' — перевірка наявності подій RAPL (Package/Cores energy);

    sudo perf stat -a -e 'power/energy-pkg/' sleep 10 — замір базового споживання системи (Idle) протягом 10 секунд;

    sudo perf stat -e 'power/energy-pkg/' -e 'power/energy-cores/' ./primes_naive 300000 — замір енергії (у Джоулях), витраченої виключно досліджуваною програмою.

Крок 4: Порівняння з оптимізованою версією

    g++ -O3 -g -march=native primes_optimized.cpp -o primes_avx — компіляція з максимальною оптимізацією та підтримкою інструкцій процесора (AVX2);

    ./primes_avx 300000 — тестовий запуск для фіксації часу виконання (0.015 с);

    sudo perf stat -d ./primes_avx 10000000 — збір статистики на збільшеному навантаженні (N=107) для коректного аналізу архітектурних параметрів;

    sudo perf stat -e 'power/energy-pkg/' -e 'power/energy-cores/' ./primes_avx 10000000 — замір енерговитрат оптимізованої програми під навантаженням;

    sudo perf record -F 99 -g ./primes_avx 10000000 — запис профілю для побудови FlameGraph оптимізованої версії.
