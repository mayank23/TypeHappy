'use strict';
import React, {Component} from 'react';
import {
  AppRegistry,
  StyleSheet,
  Text,
  View,
  FlatList,
  TextInput,
  Button,
} from 'react-native';
import Keyboard from './app/THYKeyboard/Keyboard';

const styles = StyleSheet.create({
  container: {
   flex: 1,
   paddingTop: 0
  },
  item: {
    padding: 10,
    fontSize: 18,
    height: 44,
  },
})

export const ListItem = ({item}) => {
  return (
    <View key={item.text}>
      <Text style={styles.item}>{item.text}</Text>
      {item.starred && <Text>*</Text>}
    </View>
  );
};

class THYHome extends Component {
  constructor(props){
    super(props);
    this.state = {
      inputField: {
        value: ''
      },
      userTextList: [
        {
          text: 'Hello',
        },
        {
          text: 'Good Bye',
        }
      ]
    }
    this.addTextToUserList = this.addTextToUserList.bind(this);
    this.handleInputFieldChange = this.handleInputFieldChange.bind(this);
  }

  addTextToUserList(){
    this.setState((prevState) => {
      const inputFieldValue = prevState.inputField.value;
      if(!inputFieldValue || inputFieldValue.length === 0){
        return;
      }
      if(prevState.userTextList.filter((textItem) => {
        return textItem.text === inputFieldValue;
      }).length > 0){
        return;
      }
      return {
        userTextList: [
          ...prevState.userTextList,
          {
            text: prevState.inputField.value
          }
        ]
      };
    });
  }

  handleInputFieldChange(text){

    this.setState({
      inputField:{
        value: text
      }
    })
  }


  render(){
    return (
      <View style={styles.container}>
        <TextInput value={this.state.inputField.value} onChangeText={this.handleInputFieldChange} style={{height: 40, borderColor: 'gray', borderWidth: 2}} />
        <Button  title="Add" onPress={this.addTextToUserList}/>
        <FlatList
        data={this.state.userTextList}
        renderItem={ListItem}
        />
      </View>
    );
  }
}


AppRegistry.registerComponent('THYHome', () => THYHome);
AppRegistry.registerComponent('THYKeyboard', () => Keyboard);