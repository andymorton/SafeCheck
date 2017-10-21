import React from 'react';
import PropTypes from 'prop-types';
import FormField from './FormField';
import formData from '../../data';

const Form = ({ data, onSubmit, makeSignaturePad }) => {
  const { sections } = data;
  const formFields = (questions, section) => (
    questions.map((question, i) => (
      <div className="form-group" key={question.name}>
        <label htmlFor={`${section}${question.name}${i}`}>
          {question.name}
        </label>
        <FormField
          type={question.type}
          formId={`${section}${question.name}${i}`}
          makeSignaturePad={makeSignaturePad}
        />
      </div>
    ))
  );

  return (
    <form
      onSubmit={onSubmit}
    >
      {sections && sections.map((section, i) => (
        <div key={section.name}>
          Section {i + 1}: {section.name}
          <div className="alert alert-secondary">
            {formFields(section.questions, `Section${i + 1}`)}
          </div>
        </div>
      ))}

      <button
        type="submit"
        className="btn btn-primary btn-lg"
      >
        Submit
      </button>
    </form>
  );
};


Form.propTypes = {
  data: PropTypes.shape({
    sections: PropTypes.array,
  }),
  onSubmit: PropTypes.func,
  makeSignaturePad: PropTypes.func,
};

export default Form;
