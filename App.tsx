/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 *
 * @format
 */

import React, {useState} from 'react';
import {ImageBackground, StyleSheet, Text} from 'react-native';
import {HolidayButton, ThinMaterialView} from './components';
import {MaterialBackgroudView} from 'react-native-material-backgroud';

const image = require('./assets/poster.webp');
function App(): React.JSX.Element {
  const [text, setText] = useState('');
  return (
    <MaterialBackgroudView style={styles.container} color={'#666192'}/>
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
