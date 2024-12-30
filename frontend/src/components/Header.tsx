import { useState } from "react";
import { Link, useNavigate } from "react-router-dom";

function Header() {
  const [isMenuOpen, setIsMenuOpen] = useState(false);
  const isAuthenticated = localStorage.getItem("token");
  const userPseudo = localStorage.getItem("pseudo");
  const userRole = localStorage.getItem("role");
  const navigate = useNavigate();

  const toggleMenu = () => {
    setIsMenuOpen(!isMenuOpen);
  };

  const closeMenu = () => {
    setIsMenuOpen(false);
  };

  const handleLogout = () => {
    localStorage.removeItem("token");
    localStorage.removeItem("pseudo");
    localStorage.removeItem("role");
    localStorage.removeItem("userId");
    navigate("/");
  };

  const profileLink = userRole === "admin" ? "/admin/profile" : "/profile";

  return (
    <div id="header">
      <Link to="/">
        <img id="logo-header" src="/img/logo.webp" alt="logo" />
      </Link>

      <nav id="nav" className={isMenuOpen ? "open" : ""}>
        <ul>
          <li>
            <Link to="/" onClick={closeMenu}>
              Accueil
            </Link>
          </li>

          {!isAuthenticated ? (
            <>
              <li>
                <Link to="/register" onClick={closeMenu}>
                  Inscription
                </Link>
              </li>
              <li>
                <Link to="/login" onClick={closeMenu}>
                  Connexion
                </Link>
              </li>
              <li>
                <Link to="/about" onClick={closeMenu}>
                  A propos
                </Link>
              </li>
            </>
          ) : (
            <>
              <li>
                <Link to={profileLink} onClick={closeMenu}>
                  {userPseudo}
                </Link>
              </li>
              <li>
                <Link to="/" onClick={handleLogout}>
                  Déconnexion
                </Link>
              </li>
            </>
          )}

          {userRole === "admin" && (
            <li>
              <Link to="/admin/dashboard" onClick={closeMenu}>
                Dashboard
              </Link>
            </li>
          )}
        </ul>
      </nav>

      <button
        type="button"
        className={`burger-menu ${isMenuOpen ? "open" : ""}`}
        onClick={toggleMenu}
        onKeyUp={(e) => {
          if (e.key === "Enter") toggleMenu();
        }}
        aria-label="Menu burger"
      >
        <span className="burger-icon" />
        <span className="burger-icon" />
        <span className="burger-icon" />
      </button>
    </div>
  );
}

export default Header;
