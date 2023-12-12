import React, {useEffect} from 'react';
import {NativeModules, Button, NativeEventEmitter} from 'react-native';

const {MyTextViewModule} = NativeModules;

const myTextViewModuleEmitter = new NativeEventEmitter(MyTextViewModule);

const MyTextView = () => {
  useEffect(() => {
    const subscription = myTextViewModuleEmitter.addListener(
      'onPress',
      event => {
        console.log(event.message);
      },
    );

    return () => {
      subscription.remove();
    };
  }, []);
  const handlePress = () => {
    console.log('NATIVE_MODULES\n', NativeModules.MyTextViewModule);
    NativeModules.MyTextViewModule.showMyTextView('Hello Nikita');
  };

  return <Button title="Show MyTextView" onPress={handlePress} />;
};

export default MyTextView;
