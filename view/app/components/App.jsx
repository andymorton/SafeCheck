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
      <p>
        Hollaaaa
        <span>{name}</span>
      </p>
    );
  }
}

export default App;
