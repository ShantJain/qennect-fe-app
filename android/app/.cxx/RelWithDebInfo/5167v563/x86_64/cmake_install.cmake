# Install script for directory: /Users/prashantjain/Desktop/project/clique/dev/qennect-fe-app/node_modules/react-native/ReactAndroid/cmake-utils/default-app-setup

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "RelWithDebInfo")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "0")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "TRUE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/Users/prashantjain/Library/Android/sdk/ndk/26.1.10909125/toolchains/llvm/prebuilt/darwin-x86_64/bin/llvm-objdump")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/Users/prashantjain/Desktop/project/clique/dev/qennect-fe-app/android/app/.cxx/RelWithDebInfo/5167v563/x86_64/CometchatUiKit_autolinked_build/cmake_install.cmake")
  include("/Users/prashantjain/Desktop/project/clique/dev/qennect-fe-app/android/app/.cxx/RelWithDebInfo/5167v563/x86_64/rnasyncstorage_autolinked_build/cmake_install.cmake")
  include("/Users/prashantjain/Desktop/project/clique/dev/qennect-fe-app/android/app/.cxx/RelWithDebInfo/5167v563/x86_64/rncameraroll_autolinked_build/cmake_install.cmake")
  include("/Users/prashantjain/Desktop/project/clique/dev/qennect-fe-app/android/app/.cxx/RelWithDebInfo/5167v563/x86_64/rnclipboard_autolinked_build/cmake_install.cmake")
  include("/Users/prashantjain/Desktop/project/clique/dev/qennect-fe-app/android/app/.cxx/RelWithDebInfo/5167v563/x86_64/RNDateTimePickerCGen_autolinked_build/cmake_install.cmake")
  include("/Users/prashantjain/Desktop/project/clique/dev/qennect-fe-app/android/app/.cxx/RelWithDebInfo/5167v563/x86_64/Compressor_autolinked_build/cmake_install.cmake")
  include("/Users/prashantjain/Desktop/project/clique/dev/qennect-fe-app/android/app/.cxx/RelWithDebInfo/5167v563/x86_64/RNDatePickerSpecs_autolinked_build/cmake_install.cmake")
  include("/Users/prashantjain/Desktop/project/clique/dev/qennect-fe-app/android/app/.cxx/RelWithDebInfo/5167v563/x86_64/rndocumentpicker_autolinked_build/cmake_install.cmake")
  include("/Users/prashantjain/Desktop/project/clique/dev/qennect-fe-app/android/app/.cxx/RelWithDebInfo/5167v563/x86_64/rngesturehandler_codegen_autolinked_build/cmake_install.cmake")
  include("/Users/prashantjain/Desktop/project/clique/dev/qennect-fe-app/android/app/.cxx/RelWithDebInfo/5167v563/x86_64/RNPermissionsSpec_autolinked_build/cmake_install.cmake")
  include("/Users/prashantjain/Desktop/project/clique/dev/qennect-fe-app/android/app/.cxx/RelWithDebInfo/5167v563/x86_64/rnreanimated_autolinked_build/cmake_install.cmake")
  include("/Users/prashantjain/Desktop/project/clique/dev/qennect-fe-app/android/app/.cxx/RelWithDebInfo/5167v563/x86_64/safeareacontext_autolinked_build/cmake_install.cmake")
  include("/Users/prashantjain/Desktop/project/clique/dev/qennect-fe-app/android/app/.cxx/RelWithDebInfo/5167v563/x86_64/rnscreens_autolinked_build/cmake_install.cmake")
  include("/Users/prashantjain/Desktop/project/clique/dev/qennect-fe-app/android/app/.cxx/RelWithDebInfo/5167v563/x86_64/RNShareSpec_autolinked_build/cmake_install.cmake")
  include("/Users/prashantjain/Desktop/project/clique/dev/qennect-fe-app/android/app/.cxx/RelWithDebInfo/5167v563/x86_64/RNVectorIconsSpec_autolinked_build/cmake_install.cmake")
  include("/Users/prashantjain/Desktop/project/clique/dev/qennect-fe-app/android/app/.cxx/RelWithDebInfo/5167v563/x86_64/RNCWebViewSpec_autolinked_build/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/Users/prashantjain/Desktop/project/clique/dev/qennect-fe-app/android/app/.cxx/RelWithDebInfo/5167v563/x86_64/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
