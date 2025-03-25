if(NOT TARGET react-native-reanimated::reanimated)
add_library(react-native-reanimated::reanimated SHARED IMPORTED)
set_target_properties(react-native-reanimated::reanimated PROPERTIES
    IMPORTED_LOCATION "/Users/prashantjain/Desktop/project/clique/dev/qennect-fe-app/node_modules/react-native-reanimated/android/build/intermediates/cxx/RelWithDebInfo/5d6e3au6/obj/arm64-v8a/libreanimated.so"
    INTERFACE_INCLUDE_DIRECTORIES "/Users/prashantjain/Desktop/project/clique/dev/qennect-fe-app/node_modules/react-native-reanimated/android/build/prefab-headers/reanimated"
    INTERFACE_LINK_LIBRARIES ""
)
endif()

if(NOT TARGET react-native-reanimated::worklets)
add_library(react-native-reanimated::worklets SHARED IMPORTED)
set_target_properties(react-native-reanimated::worklets PROPERTIES
    IMPORTED_LOCATION "/Users/prashantjain/Desktop/project/clique/dev/qennect-fe-app/node_modules/react-native-reanimated/android/build/intermediates/cxx/RelWithDebInfo/5d6e3au6/obj/arm64-v8a/libworklets.so"
    INTERFACE_INCLUDE_DIRECTORIES "/Users/prashantjain/Desktop/project/clique/dev/qennect-fe-app/node_modules/react-native-reanimated/android/build/prefab-headers/worklets"
    INTERFACE_LINK_LIBRARIES ""
)
endif()

