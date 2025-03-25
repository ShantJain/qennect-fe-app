if(NOT TARGET hermes-engine::libhermes)
add_library(hermes-engine::libhermes SHARED IMPORTED)
set_target_properties(hermes-engine::libhermes PROPERTIES
    IMPORTED_LOCATION "/Users/prashantjain/.gradle/caches/8.9/transforms/b8bfb956880ddcf277b23f6debe4ef61/transformed/jetified-hermes-android-0.76.5-release/prefab/modules/libhermes/libs/android.arm64-v8a/libhermes.so"
    INTERFACE_INCLUDE_DIRECTORIES "/Users/prashantjain/.gradle/caches/8.9/transforms/b8bfb956880ddcf277b23f6debe4ef61/transformed/jetified-hermes-android-0.76.5-release/prefab/modules/libhermes/include"
    INTERFACE_LINK_LIBRARIES ""
)
endif()

