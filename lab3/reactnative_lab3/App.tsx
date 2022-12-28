import React, { useState } from 'react';
import { StyleSheet, Text, View, Button } from 'react-native';

export default function App() {
  const [ labelText, setLabelText ] = useState('Нажмите чтобы получить дату');

    const onButtonClick = () => {
        const currentDate = new Date().toDateString();
        setLabelText(currentDate);
    };

    return (
        <View style={ styles.container }>
            <Text>{ labelText }</Text>
            <Button title="Получить дату" onPress={ onButtonClick } />
        </View>
    );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#fff',
    alignItems: 'center',
    justifyContent: 'center',
  },
});
