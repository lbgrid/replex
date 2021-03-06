# -*- cmake -*-
include(Prebuilt)

set(OpenSSL_FIND_QUIETLY ON)
set(OpenSSL_FIND_REQUIRED ON)

if (STANDALONE OR USE_SYSTEM_OPENSSL)
  include(FindOpenSSL)
else (STANDALONE OR USE_SYSTEM_OPENSSL)
  use_prebuilt_binary(openSSL)
  if (WINDOWS)
    set(OPENSSL_LIBRARIES ssleay32 libeay32)
  else (WINDOWS)
    set(OPENSSL_LIBRARIES ssl)
  endif (WINDOWS)
  set(OPENSSL_INCLUDE_DIRS ${LIBS_PREBUILT_DIR}/${LL_ARCH_DIR}/include)
endif (STANDALONE OR USE_SYSTEM_OPENSSL)

if (LINUX)
  set(CRYPTO_LIBRARIES crypto dl)
elseif (DARWIN)
  set(CRYPTO_LIBRARIES crypto)
endif (LINUX)
