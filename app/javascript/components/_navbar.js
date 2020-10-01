const initUpdateNavbarOnScroll = () => {
    const navbar = document.querySelector('#splash-nav');
    if (navbar) {
        window.addEventListener('scroll', () => {
            if (window.scrollY) {
                navbar.classList.add('navbar-white');
            } else {
                navbar.classList.remove('navbar-white');
            }
        });
    }
}

export { initUpdateNavbarOnScroll };