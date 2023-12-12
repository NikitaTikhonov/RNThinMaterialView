/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 *
 * @format
 */

import React, {FC, useEffect} from 'react';
import {
  HostComponent,
  requireNativeComponent,
  StyleSheet,
  ViewProps,
} from 'react-native';

type NativeButtonProps = {
  style: ViewProps['style'];
  text: string;
};

const HolidayButtonNative: HostComponent<NativeButtonProps> =
  requireNativeComponent('HolidayButtonView');
import {NativeEventEmitter, NativeModules} from 'react-native';
const {HolidayGetterEventEmitter} = NativeModules;

const eventEmitter = new NativeEventEmitter(HolidayGetterEventEmitter);

type Props = {
  onPress: (holiday: string) => void;
  text: string;
};
export const HolidayButton: FC<Props> = ({text, onPress}) => {
  useEffect(() => {
    const subscription = eventEmitter.addListener('onPress', eventData => {
      onPress(eventData.date);
    });
    return () => subscription.remove();
  }, [onPress]);

  return <HolidayButtonNative style={styles.button} text={text} />;
};

const styles = StyleSheet.create({
  button: {
    width: 150,
    height: 100,
    backgroundColor: 'transparent',
  },
});
