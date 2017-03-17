var SingleMenuItem = React.createClass({
  render: function(){
    return(
      <li>
        <a href={this.props.data.link}>
          <i class={this.props.data.icon}></i> <span>{this.props.data.title}</span>          
          <span class="pull-right-container">
            <small class="label pull-right bg-green">new</small>
          </span>
        </a>
      </li>
    )
  }
});

var MultiMenuItem = React.createClass({
  render: function(){
    return (
      <li class="treeview">
        <a href="#">
          <i class={this.props.parent.icon}></i>
          <span>this.props.parent.title</span>
          <span class="pull-right-container">
            <i class="fa fa-angle-left pull-right"></i>
          </span>
        </a>
        <ul class="treeview-menu">
          {
            this.props.data.map(function(item,i){
              return <li><a href={item.link}><i class={item.icon}></i> {item.title}</a></li>
            })
          }
          
        </ul>
      </li>
    )
  }
});