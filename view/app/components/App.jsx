import React from 'react';
import data from '../../data';

class App extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      data: {},
    };
  }

  componentWillMount() {
    fetch(data.testUrl)
      .then(response => response.json())
      .then(pageData => this.setState({ data: pageData }));
  }

  render() {
    const { name } = this.state.data;
    return (
      <h1>
        Hollaaa
        <span>{name}</span>
      </h1>
    );
  }
}

export default App;
