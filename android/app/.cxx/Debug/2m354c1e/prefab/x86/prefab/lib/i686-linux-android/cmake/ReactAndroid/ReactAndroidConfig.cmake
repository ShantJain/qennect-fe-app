if(NOT TARGET ReactAndroid::hermestooling)
add_library(ReactAndroid::hermestooling SHARED IMPORTED)
set_target_properties(ReactAndroid::hermestooling PROPERTIES
    IMPORTED_LOCATION "/Users/prashantjain/.gradle/caches/8.9/transforms/c176b1787dc33fde5c90e359010e1fb0/transformed/jetified-react-android-0.76.5-debug/prefab/modules/hermestooling/libs/android.x86/libhermestooling.so"
    INTERFACE_INCLUDE_DIRECTORIES "/Users/prashantjain/.gradle/caches/8.9/transforms/c176b1787dc33fde5c90e359010e1fb0/transformed/jetified-react-android-0.76.5-debug/prefab/modules/hermestooling/include"
    INTERFACE_LINK_LIBRARIES ""
)
endif()

if(NOT TARGET ReactAndroid::jsctooling)
add_library(ReactAndroid::jsctooling SHARED IMPORTED)
set_target_properties(ReactAndroid::jsctooling PROPERTIES
    IMPORTED_LOCATION "/Users/prashantjain/.gradle/caches/8.9/transforms/c176b1787dc33fde5c90e359010e1fb0/transformed/jetified-react-android-0.76.5-debug/prefab/modules/jsctooling/libs/android.x86/libjsctooling.so"
    INTERFACE_INCLUDE_DIRECTORIES "/Users/prashantjain/.gradle/caches/8.9/transforms/c176b1787dc33fde5c90e359010e1fb0/transformed/jetified-react-android-0.76.5-debug/prefab/modules/jsctooling/include"
    INTERFACE_LINK_LIBRARIES ""
)
endif()

if(NOT TARGET ReactAndroid::jsi)
add_library(ReactAndroid::jsi SHARED IMPORTED)
set_target_properties(ReactAndroid::jsi PROPERTIES
    IMPORTED_LOCATION "/Users/prashantjain/.gradle/caches/8.9/transforms/c176b1787dc33fde5c90e359010e1fb0/transformed/jetified-react-android-0.76.5-debug/prefab/modules/jsi/libs/android.x86/libjsi.so"
    INTERFACE_INCLUDE_DIRECTORIES "/Users/prashantjain/.gradle/caches/8.9/transforms/c176b1787dc33fde5c90e359010e1fb0/transformed/jetified-react-android-0.76.5-debug/prefab/modules/jsi/include"
    INTERFACE_LINK_LIBRARIES ""
)
endif()

if(NOT TARGET ReactAndroid::reactnative)
add_library(ReactAndroid::reactnative SHARED IMPORTED)
set_target_properties(ReactAndroid::reactnative PROPERTIES
    IMPORTED_LOCATION "/Users/prashantjain/.gradle/caches/8.9/transforms/c176b1787dc33fde5c90e359010e1fb0/transformed/jetified-react-android-0.76.5-debug/prefab/modules/reactnative/libs/android.x86/libreactnative.so"
    INTERFACE_INCLUDE_DIRECTORIES "/Users/prashantjain/.gradle/caches/8.9/transforms/c176b1787dc33fde5c90e359010e1fb0/transformed/jetified-react-android-0.76.5-debug/prefab/modules/reactnative/include"
    INTERFACE_LINK_LIBRARIES ""
)
endif()

