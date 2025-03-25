import React, { useEffect, useState } from 'react';
import Navigation from './src/routes/Navigation';
import {KeyboardAvoidingView, PermissionsAndroid, Platform, SafeAreaView, StatusBar, View } from 'react-native';
import style from './src/styles/style';
import {MembersProvider} from './src/screen/Members/MembersContext';
import { Keyboard } from 'react-native';
import COLORS from './src/styles/theme/color';
import messaging from '@react-native-firebase/messaging';
import crashlytics from '@react-native-firebase/crashlytics';
import perf from '@react-native-firebase/perf';
import { CometChatLocalize, CometChatUIKit } from '@cometchat/chat-uikit-react-native'
import { CometChat } from '@cometchat/chat-sdk-react-native';
import Config from 'react-native-config';
import { Provider } from 'react-redux';
import store from './src/store/store';
import { StripeProvider } from '@stripe/stripe-react-native';

const App: React.FC = () => {
// Initialize CometChat
const getPermissions = async () => {
  try {
    await messaging().requestPermission();
    console.log('Messaging permission granted');
    if (Platform.OS === 'android') {

      const granted = await PermissionsAndroid.requestMultiple([
        PermissionsAndroid.PERMISSIONS.POST_NOTIFICATIONS,
        PermissionsAndroid.PERMISSIONS.READ_MEDIA_IMAGES,
        PermissionsAndroid.PERMISSIONS.WRITE_EXTERNAL_STORAGE,
        PermissionsAndroid.PERMISSIONS.READ_EXTERNAL_STORAGE,
        PermissionsAndroid.PERMISSIONS.CAMERA,
        PermissionsAndroid.PERMISSIONS.RECORD_AUDIO,
        PermissionsAndroid.PERMISSIONS.ACCESS_FINE_LOCATION,
      ]);

      const allPermissionsGranted = Object.values(granted).every(
        status => status === PermissionsAndroid.RESULTS.GRANTED
      );
      console.log("APp",granted)
      if (allPermissionsGranted) {
        console.log('All permissions granted');
      } else {
        console.log('Some permissions were not granted');
      }
    }
  } catch (error) {
    crashlytics().log(error);
  }
};

const [isKeyboardOpen, setIsKeyboardOpen] = useState(false);

useEffect(() => {
    const callpermissions = async ()=>{
      await getPermissions();

    }
    callpermissions()
 
    CometChatUIKit.init({
      appId: Config.APP_ID,
      authKey: Config.AUTH_KEY,
      region: Config.REGION,
    })
    .then(() => {
      CometChatLocalize.setLocale("en");
      try{CometChat.setDemoMetaInfo(metaInfo)}catch(err){}
      if (CometChat.setSource) {
        CometChat.setSource('ui-kit', Platform.OS, 'react-native');
      }
    })
    .catch(() => {
      return null;
    });

}, []);
  

  useEffect(() => {
    const keyboardDidShowListener = Keyboard.addListener(
      'keyboardDidShow',
      () => {
        setIsKeyboardOpen(true);
      }
    );

    const keyboardDidHideListener = Keyboard.addListener(
      'keyboardDidHide',
      () => {
        setIsKeyboardOpen(false);
      }
    );
    perf().setPerformanceCollectionEnabled(true);
    crashlytics().setCrashlyticsCollectionEnabled(true);
    crashlytics().log("Login");
    // Request permission for notifications (optional)
   

    // Clean up listeners
    return () => {
      keyboardDidShowListener.remove();
      keyboardDidHideListener.remove();
    };
  }, []);
  return (
  <Provider store={store}>    
  <View style={style.contant}>
    <StatusBar animated={true} hidden={false} backgroundColor={COLORS.PRIMARY} />
    <MembersProvider>
      <SafeAreaView style={[style.contant,style.primaryLayout]}>
      <KeyboardAvoidingView
        style={[style.contant]}
        keyboardVerticalOffset={0}
      >
        <StripeProvider publishableKey="pk_test_51QNDKtFpG1bQOJbd4lpiqwjwJaFjvg8Crvl4S4B39HNHcXxEGyCRCfwCYjPCRxGIQuqObiQY0C9qFN8ee9DhKfXp00jhJCd1CA">
          <Navigation isKeyboardOpen={isKeyboardOpen}/>
        </StripeProvider>
    
      </KeyboardAvoidingView>
    </SafeAreaView>
    </MembersProvider>
  </View>
  </Provider>
  );
};

export default App;
