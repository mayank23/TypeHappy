'use strict';
import React from 'react';
import {
  AppRegistry,
  StyleSheet,
  Text,
  View
} from 'react-native';

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#FFFFFF',
  }
});

const THYHome = () => {
  return (
    <View style={styles.container}><Text>{"Hello World"}</Text></View>
  );
};

AppRegistry.registerComponent('THYHome', () => THYHome);