import React from "react";
const axios = require('axios');

export default class Newscard extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      status: '',
      author: ''
    }
  }

  componentDidMount() {
    var _this = this;
    this.ajaxRequest =
      axios
        .get(_this.props.source)
        .then(function (result) {
          _this.setState({
            status: result.data.status,
            author: result.data.articles[1].author,
            title: result.data.articles[1].title,
            description: result.data.articles[1].description,
            url: result.data.articles[1].url,
            urlToImage: result.data.articles[1].urlToImage,
            publishedAt: result.data.articles[1].publishedAt,
          });
        })
  }

  componentWillUnmount() {
    this.ajaxRequest.abort();
  }

  render() {
    return (
      <div>
        <div className="news-card">
          <img className="image" src={this.state.urlToImage}/>
          <div className="news-text">
            <h2 className="title">{this.state.title}</h2>
            <p className="description">{this.state.description} <a className="url" href={this.state.url}
                                                                   target="_blank">read more</a></p>
            <span className="author"> {this.state.author} </span>
            <span className="publishedAt">{this.state.publishedAt}</span>
            <span className="topic">TECH</span>
          </div>
        </div>
      </div>
    );
  }
}

