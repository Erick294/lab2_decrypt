# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/workspace/lab2_decrypt/_deps/cryptopp-cmake-src"
  "/workspace/lab2_decrypt/_deps/cryptopp-cmake-build"
  "/workspace/lab2_decrypt/_deps/cryptopp-cmake-subbuild/cryptopp-cmake-populate-prefix"
  "/workspace/lab2_decrypt/_deps/cryptopp-cmake-subbuild/cryptopp-cmake-populate-prefix/tmp"
  "/workspace/lab2_decrypt/_deps/cryptopp-cmake-subbuild/cryptopp-cmake-populate-prefix/src/cryptopp-cmake-populate-stamp"
  "/workspace/lab2_decrypt/_deps/cryptopp-cmake-subbuild/cryptopp-cmake-populate-prefix/src"
  "/workspace/lab2_decrypt/_deps/cryptopp-cmake-subbuild/cryptopp-cmake-populate-prefix/src/cryptopp-cmake-populate-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/workspace/lab2_decrypt/_deps/cryptopp-cmake-subbuild/cryptopp-cmake-populate-prefix/src/cryptopp-cmake-populate-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/workspace/lab2_decrypt/_deps/cryptopp-cmake-subbuild/cryptopp-cmake-populate-prefix/src/cryptopp-cmake-populate-stamp${cfgdir}") # cfgdir has leading slash
endif()
