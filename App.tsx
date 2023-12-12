/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 *
 * @format
 */

import React, {useEffect, useState} from 'react';
import {
  requireNativeComponent,
  SafeAreaView,
  StyleSheet,
  Text,
} from 'react-native';
import {HolidayButton} from './components';
function App(): React.JSX.Element {
  const [text, setText] = useState('');
  return (
    <SafeAreaView style={styles.container}>
      <HolidayButton text={'Get Holiday'} onPress={setText} />
      <Text>The holiday is: {text}</Text>
    </SafeAreaView>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    alignItems: 'center',
    justifyContent: 'center',
    backgroundColor: 'green',
  },
});

export default App;
