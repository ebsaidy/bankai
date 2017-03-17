var DynamicForm = React.createClass({
  render: function(){
    return(
      <form>
        {
          this.props.data.map(function(item,i){
            if(item.type === 'String'){
              return <StringElement key={i} data={item,'text'}/>
            }else if(item.type === 'Date'){
              return <DateElement key={i} data={item}/>
            }else if(item.type === 'list'){
              return <ListElement key={i} data={item}/>
            }else if(item.type === 'boolean'){
              return <BooleanElement key={i} data={item}/>
            }else if(item.type === 'multi'){
              return <CheckElement key={i} data={item}/>
            }else if(item.type === 'Password'){
              return <StringElement key={i} data={item,'password'}/>
            }
            
          })
        }
      </form>
    )
  }
});

var StringElement = React.createClass({
  render: function(){
    return(
      <div class="form-group">
        <label for="exampleInputEmail1">Email address</label>
        <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Enter email" />
      </div>
    )
  }
});