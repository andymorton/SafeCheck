import React from 'react';
import Form from './Form';
import Header from './Header';
import data from '../../data';

let signaturePad;

class App extends React.Component {
  static makeSignaturePad(canvas) {
    if (canvas) {
      signaturePad = new SignaturePad(canvas);
    }
  }

  constructor(props) {
    super(props);

    this.state = {
      data: {},
      submitted: false,
    };

    this.submitForm = this.submitForm.bind(this);
  }

  componentWillMount() {
    fetch(`${data.testUrl}TEST`)
      .then(response => response.json())
      .then(pageData => this.setState({ data: pageData }));
  }

  submitForm(e) {
    e.preventDefault();
    const f = e.target;
    const formData = Object.assign(this.state.data);

    formData.sections.map((section) => {
      section.questions.map((question, i) => {
        if (question.type !== 'SIGNATURE') {
          question.value = f.elements[i].value;
          f.elements[i].value = '';
        } else {
          question.value = signaturePad.toDataURL("image/svg+xml");
          signaturePad.clear();
        }
      });
    });

    console.log(formData);
    const options = {
      method: 'post',
      body: JSON.stringify(formData),
      headers: {
        Accept: 'application/json',
        'Content-Type': 'application/json',
      },
    }

    fetch(data.postUrl, options)
      .then(({ status }) => this.setState({ submitted: status === 200 }));
    return false;
  }

  render() {
    return (
      <div className="mb-5">
        <Header />
        <div className="container">
          {this.state.submitted &&
            <div className="alert alert-success">
              We have recieved your information!
            </div>
          }
          <Form
            data={this.state.data}
            onSubmit={this.submitForm}
            makeSignaturePad={App.makeSignaturePad}
          />
        </div>
      </div>
    );
  }
}

export default App;
