import React from 'react'

import SearchIcon from '../assets/icons/ic-search.svg'
import CompanyIcon from '../assets/icons/ic-business-center.svg'
import ProfileIcon from '../assets/icons/ic-person.svg'

const Navbar = () => (
  <nav className="navbar">
    <div className="navbar__container-left">
      <div className="navbar__search search">
        <input
          type="text"
          className="search__field"
          placeholder="What are you looking for?"
        />
        <button type="submit" className="search__button">
          <img src={SearchIcon} alt="icon search" />
        </button>
      </div>
    </div>
    <div className="navbar__container-right">
      <button
        type="button"
        className="navbar__container-right__button navbar__container-right__button-company"
      >
        <img src={CompanyIcon} alt="icon case" />
        <div>Entreprises</div>
      </button>
      <button
        type="button"
        className="navbar__container-right__button navbar__container-right__button-profile"
      >
        <img src={ProfileIcon} alt="icon user" />
        <div>Profile</div>
      </button>
    </div>
  </nav>
)

export default Navbar
