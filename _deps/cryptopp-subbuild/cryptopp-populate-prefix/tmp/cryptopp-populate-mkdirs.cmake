# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/workspace/lab2_decrypt/_deps/cryptopp-cmake-build/cryptopp"
  "/workspace/lab2_decrypt/_deps/cryptopp-build"
  "/workspace/lab2_decrypt/_deps/cryptopp-subbuild/cryptopp-populate-prefix"
  "/workspace/lab2_decrypt/_deps/cryptopp-subbuild/cryptopp-populate-prefix/tmp"
  "/workspace/lab2_decrypt/_deps/cryptopp-subbuild/cryptopp-populate-prefix/src/cryptopp-populate-stamp"
  "/workspace/lab2_decrypt/_deps/cryptopp-subbuild/cryptopp-populate-prefix/src"
  "/workspace/lab2_decrypt/_deps/cryptopp-subbuild/cryptopp-populate-prefix/src/cryptopp-populate-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/workspace/lab2_decrypt/_deps/cryptopp-subbuild/cryptopp-populate-prefix/src/cryptopp-populate-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/workspace/lab2_decrypt/_deps/cryptopp-subbuild/cryptopp-populate-prefix/src/cryptopp-populate-stamp${cfgdir}") # cfgdir has leading slash
endif()
