// To run webpack ./bin/webpack-dev-server

import React from "react"

class Appointment extends React.Component {
  render() {
    return (
      <div>
        <h3>{this.props.appointment.title}</h3>
        <p>{this.props.appointment.appt_time}</p>
      </div>
    )
  }
}
