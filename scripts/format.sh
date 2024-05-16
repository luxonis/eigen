#!/bin/bash
find . -type f \( -name '*.cpp' -o -name '*.h' -o -name '*.inc' \) | xargs -n 1 -P 0 clang-format -i
find Eigen -maxdepth 1 -type f | xargs -n 1 -P 0 clang-format -i
find unsupported/Eigen -maxdepth 1 -type f -not -name '*.txt' | xargs -n 1 -P 0 clang-format -i
