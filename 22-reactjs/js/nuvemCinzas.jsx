// tutorial1.js
var Mapa = React.createClass({
  getInitialState: function() {
    return {nuvem:[[1,1]]}
  },
  proximoDia: function() {
    this.setState({nuvem:[[0,1],[1,0],[1,1]]})
  },
  temNuvem: function(x, y) {
    for (var i = this.state.nuvem.length - 1; i >= 0; i--) {
      if (this.state.nuvem[i][0] == x && this.state.nuvem[i][1] == y) {
        return true;
      }
    }
    return false;
  },
  render: function() {
    var mapa      = [];
    var aeroporto = [0,1];

    for (var x = this.props.rows - 1; x >= 0; x--) {
      for (var y = this.props.cols - 1; y >= 0; y--) {
        var element = '.';
        if (aeroporto[0] == x && aeroporto[1] == y) { 
          element = 'A';
        }
        if (this.temNuvem(x,y)){
          element = '*';
        }
        mapa.push (<div data-row={x} data-col={y}>{element}</div>);
      }; 
    }; 

    return (
      <div>
        { mapa }
        <button id="proximoDia" onClick={this.proximoDia}> botao
        </button>
      </div>
    );
  }
});
React.render(
  <Mapa rows={2} cols={2}/>,
  document.getElementById('mapa')
);