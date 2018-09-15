import React from 'react'
import PropTypes from 'prop-types'
import styled from 'styled-components'

import Navbar from './Navbar'

const Layout = ({ children }) => (
  <div className="App">
    <Navbar />
    {children}
  </div>
)

export default styled(Layout)`
  height: 100%;
  width: 100%;
`

Layout.defaultProps = {
  children: null,
}

Layout.propTypes = {
  children: PropTypes.element,
}
