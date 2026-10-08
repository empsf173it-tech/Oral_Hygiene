$css = @"
/* Premium Navbar Styles */
.header-premium {
    background: rgba(255, 255, 255, 0.85);
    backdrop-filter: blur(16px);
    -webkit-backdrop-filter: blur(16px);
    border-bottom: 1px solid rgba(13, 148, 136, 0.15);
    box-shadow: 0 4px 30px rgba(0, 0, 0, 0.05);
    transition: all 0.3s ease;
    z-index: 1030;
}

[data-bs-theme="dark"] .header-premium {
    background: rgba(15, 23, 42, 0.85);
    border-bottom: 1px solid rgba(255, 255, 255, 0.05);
}

.premium-brand span {
    background: linear-gradient(135deg, #0d9488, #0ea5e9);
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
    font-weight: 800;
    letter-spacing: -0.5px;
}

.brand-logo-glow {
    box-shadow: 0 0 15px rgba(13, 148, 136, 0.4);
    border: 2px solid rgba(13, 148, 136, 0.2);
    transition: transform 0.3s ease;
}

.premium-brand:hover .brand-logo-glow {
    transform: rotate(5deg) scale(1.05);
}

.nav-links-premium .nav-link {
    font-weight: 500;
    font-size: 1.05rem;
    padding: 0.5rem 1rem !important;
    margin: 0 0.25rem;
    position: relative;
    color: inherit;
    transition: color 0.3s ease;
}

.nav-links-premium .nav-link::after {
    content: '';
    position: absolute;
    width: 0;
    height: 2px;
    bottom: 0;
    left: 50%;
    background: #0d9488;
    transition: all 0.3s ease;
    transform: translateX(-50%);
    border-radius: 2px;
}

.nav-links-premium .nav-link:hover {
    color: #0d9488 !important;
}

.nav-links-premium .nav-link:hover::after {
    width: 80%;
}

.theme-toggle-btn {
    width: 42px;
    height: 42px;
    border-radius: 50%;
    background: rgba(13, 148, 136, 0.1);
    color: #0d9488;
    border: 1px solid rgba(13, 148, 136, 0.2);
    transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
}

.theme-toggle-btn:hover {
    background: #0d9488;
    color: white;
    transform: translateY(-2px);
    box-shadow: 0 5px 15px rgba(13, 148, 136, 0.3);
}

.btn-premium-login {
    background: linear-gradient(135deg, #0d9488, #0ea5e9);
    color: white !important;
    font-weight: 600;
    padding: 0.6rem 1.5rem;
    border-radius: 50px;
    border: none;
    box-shadow: 0 4px 15px rgba(13, 148, 136, 0.3);
    transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
    letter-spacing: 0.5px;
    text-decoration: none;
}

.btn-premium-login:hover {
    transform: translateY(-2px);
    box-shadow: 0 8px 25px rgba(13, 148, 136, 0.4);
    background: linear-gradient(135deg, #0ea5e9, #0d9488);
}

.custom-toggler {
    border: none;
    padding: 0.5rem;
}

.custom-toggler:focus {
    box-shadow: none;
}
"@
Add-Content -Path "f:\Smartfusion\October\Oral_Hygiene\assets\css\style.css" -Value $css
