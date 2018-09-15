import React from 'react'
import PropTypes from 'prop-types'

import Navbar from './Navbar'

const Layout = ({ children }) => (
  <div className="App">
    <Navbar />
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
