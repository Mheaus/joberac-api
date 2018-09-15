import React from 'react'
import PropTypes from 'prop-types'

import SearchIcon from '../assets/icons/ic-search.svg'
import CompanyIcon from '../assets/icons/ic-business-center.svg'
import ProfileIcon from '../assets/icons/ic-person.svg'

const Layout = ({ children }) => (
  <div className="App">
    <navbar className="navbar">
      <div className="navbar__logo">JOBERAC</div>
      <div className="navbar__search search">
        <input type="text" className="search__field" placeholder="What are you looking for?" />
        <button type="submit" className="search__button">
          <img src={SearchIcon} alt=""/>
        </button>
      </div>
      <div className="navbar__buttons buttons">
        <div className="buttons__button-company">
          <img src={CompanyIcon} alt="" />
          <div>Entreprises</div>
        </div>
        <div className="buttons__button-profile">
          <img src={ProfileIcon} alt=""/>
          <div>Profile</div>
        </div>
      </div>
    </navbar>
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
