/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 *
 * @format
 */

import React, {useState} from 'react';
import {ImageBackground, StyleSheet, Text} from 'react-native';
import {HolidayButton, ThinMaterialView} from './components';

const image = require('./assets/poster.webp');
function App(): React.JSX.Element {
  const [text, setText] = useState('');
  return (
    <ImageBackground source={image} style={styles.container}>
      <ThinMaterialView
        enabled={true}
        material={'ultrathin'}
        style={{
          width: '100%',
          height: '100%',
          padding: 20,
          alignItems: 'center',
          justifyContent: 'center',
        }}>
        <HolidayButton text={'Get Holiday'} onPress={setText} />
        <Text>{text}</Text>
      </ThinMaterialView>
    </ImageBackground>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    alignItems: 'center',
    justifyContent: 'center',
    backgroundColor: 'lightblue',
  },
});

export default App;
