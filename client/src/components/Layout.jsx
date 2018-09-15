import React from 'react'
import PropTypes from 'prop-types'

const Layout = ({ children }) => (
  <div className="App">
    <header className="App-header">
      <h1 className="App-title">Welcome to React</h1>
    </header>
    {children}
  </div>
)

Layout.defaultProps = {
  children: null,
}

Layout.propTypes = {
  children: PropTypes.element,
}

export default Layout
