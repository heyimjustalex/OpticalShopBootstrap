window.onload = function () {

    const navLinks = document.querySelectorAll('.nav-item')
    const menuToggle = document.getElementById('navbarMenu')
    const bsCollapse = new bootstrap.Collapse(menuToggle, { toggle: false })
    navLinks.forEach((l) => {
        l.addEventListener('click', () => { if (window.innerWidth < 992) { bsCollapse.toggle() } })
    })
}