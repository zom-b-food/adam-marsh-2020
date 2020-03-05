

        var Todo = React.createClass({
        	getInitialState: function () {
                return {editing:false}
            },
            edit: function() {
               this.setState({editing:true});
            },
            remove: function (){
            	this.props.deleteTodoText(this.props.index)
            },
            save: function() {
            	this.props.updateTodoText(this.refs.newText.value, this.props.index);
                this.setState({editing:false});
            },
            renderNormal: function (){
            	return (
            		<div className="am-block">
            			<div className="todoItem">{this.props.children}</div>

            			<button onClick={this.edit} className="uk-button-primary">Edit</button>
            			<button onClick={this.remove} className="uk-button-danger">Remove</button>

            		</div>
            	);
            },
            renderForm: function (){
            	return (
            		<div className="am-block">
            			<textarea ref="newText" defaultValue={this.props.children}></textarea>

            			<button onClick={this.save} className="uk-button-success">Save</button>
            		</div>
            	);
            },
            render: function (){
            	if(this.state.editing){
            		return this.renderForm();
            	} else {
            		return this.renderNormal();
            	}
            }
        });

        var Board = React.createClass({
        	getInitialState: function (){
        		return {
        			todos: [
        				'Walk Rufus',
        				'Pet Rufs',
        				'Feed Rufus'
        			]
        		}
        	},

        	add: function(text) {
        		var arr = this.state.todos;
        		arr.push(text);
        		this.setState({todos: arr})
        	},

        	removeTodo: function(i){
        		var arr = this.state.todos;
        		arr.splice(i, 1);
        		this.setState({todos: arr})
        	},

        	updateTodo: function(newText, i){
        		var arr = this.state.todos;
        		arr[i] = newText;
        		this.setState({todos: arr})
        	},

        	eachTodo: function (text, i) {
        		return (
        			<Todo key={i} index={i} updateTodoText={this.updateTodo} deleteTodoText={this.removeTodo}>
        				{text}
        			</Todo>
        			);
        	},

        	render: function () {
        		return (
        			<div>
        			<button onClick={this.add.bind(null, 'What should I do now?')} className="uk-button-success">Add New Task</button>

        				<div className="board">
			        		{this.state.todos.map(this.eachTodo)}
        				</div>
        			</div>
        			);

        	}


        });

        ReactDOM.render(<Board />, document.getElementById('todo'));
