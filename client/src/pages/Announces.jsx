import React, { Component } from 'react'
import PropTypes from 'prop-types'
import styled from 'styled-components'

import { IdentityModule, Layout } from '../components'
import { getAnnounces } from '../graphql/queries'

class announces extends Component {
  constructor(props) {
    super(props)
    this.state = {
      announces: [],
    }
  }

  componentDidMount = async () => {
    const { data } = await getAnnounces()
    const { announces } = data

    this.setState({ announces })
  }

  render() {
    // const { announces } = this.state
    const { className } = this.props

    return (
      <Layout>
        <div className={`announces ${className}`}>
          <div className="announces__column-left">
            <IdentityModule />
          </div>
          <div className="user-feed announces" />
        </div>
      </Layout>
    )
  }
}

export default styled(announces)`
  &.announces {
    display: flex;
    height: 100%;
    width: 100%;

    .announces__column-left {
      max-width: 20%;
      padding: 2rem;
    }
  }
`

announces.defaultProps = {
  className: '',
}

announces.propTypes = {
  className: PropTypes.string,
}
