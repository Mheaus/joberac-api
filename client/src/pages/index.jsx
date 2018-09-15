import React from 'react'
import ReactDOM from 'react-dom'

import { BrowserRouter as Router, Switch, Route } from 'react-router-dom'
import NoMatch from './404'
import Announces from './Announces'

const App = () => (
  <Router>
    <Switch>
      <Route exact path="/" component={Announces} />
      <Route component={NoMatch} />
    </Switch>
  </Router>
)

ReactDOM.render(<App />, document.getElementById('root'))
