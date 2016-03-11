#!/bin/bash
rm tests/test_main 2> /dev/null
valac tests/test_main.gs \
      tests/test_fizzbuzz.vala \
      src/fizzbuzz.gs \
      tests/fsotest/assert.vala \
      tests/fsotest/signalwaiter.vala \
      tests/fsotest/testcase.vala \
      tests/fsotest/asynchelpers.vala \
      --pkg gio-2.0 \
      --pkg gee-0.8 \
      --output tests/test_main 2> /dev/null
./tests/test_main
