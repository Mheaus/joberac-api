import React from 'react'
import styled from 'styled-components'

const IdentityModule = ({ className }) => (
  <div
    className={`announces__column-left__identity-module identity-module ${className}`}
  >
    <img className="identity-module__user-picture" src="" alt="" />
    <p className="identity-module__name">FullName</p>
    <p className="identity-module__headline">
      Lorem ipsum dolor sit amet, consectetur adipiscing elit
    </p>
  </div>
)

export default styled(IdentityModule)`
  &.announces__column-left__identity-module.identity-module {
    width: 20rem;
    background: red;

    .identity-module__user-picture {
    }
    .identity-module__name {
    }
    .identity-module__headline {
    }
  }
`
