import React from 'react'
import PropTypes from 'prop-types'
import styled from 'styled-components'

const IdentityModule = ({ className }) => (
  <div
    className={`announces__column-left__identity-module identity-module ${className}`}
  >
    <div className="identity-module__user-picture__container">
      <img className="identity-module__user-picture" src="" alt="" />
    </div>
    <p className="identity-module__name">FullName</p>
    <p className="identity-module__headline">
      Lorem ipsum dolor sit amet, consectetur adipiscing elit
    </p>
  </div>
)

export default styled(IdentityModule)`
  &.announces__column-left__identity-module.identity-module {
    position: relative;
    text-align: center;
    padding: 2rem 1rem;
    box-shadow: 0 2px 4px -1px rgba(0, 0, 0, 0.2),
      0 1px 10px 0 rgba(0, 0, 0, 0.12), 0 4px 5px 0 rgba(0, 0, 0, 0.14);

    .identity-module__user-picture__container {
      width: 8rem;
      height: 8rem;
      border-radius: 50%;
      margin: 0 auto;
      background: var(--silver);
      overflow: hidden;

      .identity-module__user-picture {
      }
    }
    .identity-module__name {
    }
    .identity-module__headline {
    }
  }
`
IdentityModule.defaultProps = {
  className: '',
}

IdentityModule.defaultProps = {
  className: PropTypes.string,
}
