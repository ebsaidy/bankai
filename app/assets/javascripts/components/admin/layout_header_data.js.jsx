var MailList = React.createClass({
  render: function() {
    return(
      <li>
        <a href="#">
          <div className="pull-left">
            <img src={this.props.data.src} className="img-circle" alt="User Image" />
          </div>
          <h4>
            {this.props.data.header}
            <small><i className="fa fa-clock-o"></i> {this.props.data.time} mins</small>
          </h4>
          <p>{this.props.data.msg}</p>
        </a>
      </li>
    )
  }
});

var NotificationList = React.createClass({
  
  render: function(){
    return(
      <li>
        <a href="#">
          <i className="fa fa-users text-aqua"></i>{this.props.data.msg}
        </a>
      </li>   
    )                
  }
});


var TaskList = React.createClass({
  handleClick: function() {
  },
  render: function(){
    return(
      <li>
        <a href='#' onClick={this.handleClick} >
          <h3>
            {this.props.data.header}
            <small className="pull-right">{this.props.data.progress}</small>
          </h3>
          <div className="progress xs">
            <div className="progress-bar progress-bar-yellow" style={{width: this.props.data.progress}} role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
              <span className="sr-only">{this.props.data.progress} Complete</span>
            </div>
          </div>
        </a>
      </li>
    )  
  }
});