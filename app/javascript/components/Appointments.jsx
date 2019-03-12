import React from "react";
import AppointmentForm from "./AppointmentForm"
import AppointmentList from "./AppointmentList"

export default class Appointments extends React.Component {

  constructor(props) {
    super(props);
    this.state = {
      appointments: this.props.appointments,
      title: '',
      appt_time: ''
    }
  }

  addNewAppointment(appointment) {
    React.addons.update(this.state.appointments, {$push: [appointment]});
    // this.setState({ appointments: appointments});
  }

  handleFormSubmit(obj) {
    var appointment = {title: this.state.title, appt_time: this.state.appt_time};
    fetch('appointments').then(function (response) {
      console.log(response.json());
    }).then(function (result) {
      console.log(result.data.children);
    });
  }

  handleUserInput(obj) {
    this.setState(obj);
  }

  render() {
    return (
      <div>
        <AppointmentForm title={this.state.title} appt_time={this.state.appt_time}
                         onUserInput={this.handleUserInput} onFormSubmit={this.handleFormSubmit()}/>
        <AppointmentList appointments={this.state.appointments}/>
      </div>
    )
  }
}
