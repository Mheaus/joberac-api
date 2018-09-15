import React from 'react'
import { Link } from 'react-router-dom'

const NoMatch = () => (
  <div>
    {"Oups, you're lost"}
    <Link to="/">Go back</Link>
  </div>
)

export default NoMatch
