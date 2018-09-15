 import React, { Fragment } from "react";
import ReactDOM from "react-dom";

import { Layout } from "../components";

class App extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      announces: []
    };
  }

  componentDidMount = async () => {
    const announces = await fetch(
      "http://localhost:3001/api/v1/announces"
    ).then(response => response.json());

    this.setState({ announces });
  };

  render() {
    const { announces } = this.state;

    return (
      <Layout className="App">
        <Fragment>
          <p>content</p>
          {announces.map(announce => (
            <div key={announce.id}>
              coucou
              {announce.id}
            </div>
          ))}
        </Fragment>
      </Layout>
    );
  }
}

ReactDOM.render(<App />, document.getElementById("root"));
