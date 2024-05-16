#!/bin/bash
find . -type f \( -name '*.cpp' -o -name '*.h' -o -name '*.inc' \) | parallel clang-format -i {}
find Eigen -maxdepth 1 -type f | parallel clang-format -i {}
find unsupported/Eigen -maxdepth 1 -type f -not -name '*.txt' | parallel clang-format -i {}
