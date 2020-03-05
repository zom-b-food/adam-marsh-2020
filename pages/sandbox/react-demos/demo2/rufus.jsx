class Profile extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      height: 100
    };
  }
  render() {
    var { name, dep, spec, pic } = this.props;
    var { height } = this.state;
    return (
      <div className="profile-box">
        <h2>{name}</h2><br />
        <h4>Department:<br />{dep}</h4>
        <h4>Specialty:<br />{spec}</h4>
        <img src={pic} height={height} />
        <br />
        <button onClick={this.zoomPicOut.bind(this)}>-</button>
        <button onClick={this.zoomPicIn.bind(this)}>+</button>
      </div>
    );
  }
  zoomPicIn() {
    this.setState({height: this.state.height + 100});
  }
  zoomPicOut() {
    this.setState({height: this.state.height - 100});
  }
}
// props
// state
React.render(<Profile name="Rufus Schnoodle" dep={"Web Services"} spec="Responsive Development" pic="rufus.jpg" />, document.getElementById('app'));