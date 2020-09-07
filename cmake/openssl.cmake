macro (find_libcrypto)
    if(NOT LIBCRYPTO_LDFLAGS)
        if(WIN32)
            find_package(OpenSSL REQUIRED)
            set(LIBCRYPTO_LDFLAGS "OpenSSL::Crypto")
            set(LIBCRYPTO_VERSION ${OPENSSL_VERSION})
            set(LIBCRYPTO_INCLUDEDIR ${OPENSSL_INCLUDE_DIR})
        else(WIN32)
            pkg_search_module (LIBCRYPTO REQUIRED libcrypto)
        endif(WIN32)
    endif(NOT LIBCRYPTO_LDFLAGS)
endmacro()