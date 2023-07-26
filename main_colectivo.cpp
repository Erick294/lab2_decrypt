#include <iostream>
#include <fstream>
#include <fmt/core.h>
#include <fmt/color.h>
#include <cryptopp/des.h>
#include <cryptopp/base64.h>
#include <mpi.h>

void DES_decrypt(const char *keyString, CryptoPP::byte *block, size_t length, CryptoPP::byte *out_buffer) {
    CryptoPP::byte key[CryptoPP::DES::KEYLENGTH];
    std::memcpy(key, keyString, CryptoPP::DES::KEYLENGTH);

    auto cipher = std::make_shared<CryptoPP::DESDecryption>(key, CryptoPP::DES::KEYLENGTH);

    int steps = length / cipher->BlockSize();
    for (int i = 0; i < steps; i++) {
        int offset = i * cipher->BlockSize();

        cipher->ProcessBlock(block + offset, out_buffer + offset);
    }
}

std::string to_base64(std::string str) {
    std::string ret;
    CryptoPP::StringSource ss(str, true,
                              new CryptoPP::Base64Encoder(
                                      new CryptoPP::StringSink(ret)
                              )
    );
    return ret;
}

std::string from_base64(std::string str) {
    std::string ret;
    CryptoPP::StringSource ss(str, true,
                              new CryptoPP::Base64Decoder(
                                      new CryptoPP::StringSink(ret)
                              )
    );
    return ret;
}

int main(int argc, char** argv) {
    // texto en formato BASE64
    const char* text_to_find = "cryptographic";

    MPI_Init(&argc, &argv);

    int rank_id;
    int nprocs;

    MPI_Comm_rank(MPI_COMM_WORLD, &rank_id);
    MPI_Comm_size(MPI_COMM_WORLD, &nprocs);

    long block_size = LLONG_MAX/nprocs;

    long start_index = rank_id*block_size;
    long end_index = (rank_id+1)*block_size;
    int text_size;

    if (rank == 0) {
        std::ifstream file("example.txt");
        std::string str;
        std::getline(file, str);
        file.close();
    }

    
}