import React from 'react'
import PropTypes from 'prop-types'

import SearchIcon from '../assets/icons/ic-search.svg'
import CompanyIcon from '../assets/icons/ic-business-center.svg'
import ProfileIcon from '../assets/icons/ic-person.svg'

const Layout = ({ children }) => (
  <div className="App">
    <navbar className="navbar">
      <div className="navbar__container-left">
        <div className="navbar__search search">
          <input type="text" className="search__field" placeholder="What are you looking for?" />
          <button type="submit" className="search__button">
            <img src={SearchIcon} alt=""/>
          </button>
        </div>
      </div>
      <div className="navbar__container-right">
        <button className="navbar__container-right__button navbar__container-right__button-company">
          <img src={CompanyIcon} alt="" />
          <div>Entreprises</div>
        </button>
        <button className="navbar__container-right__button navbar__container-right__button-profile">
          <img src={ProfileIcon} alt=""/>
          <div>Profile</div>
        </button>
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
