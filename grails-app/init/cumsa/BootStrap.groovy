package cumsa

class BootStrap {

    def init = { servletContext ->
        /* def rolUno = new Role(authority: 'ROLE_ADMIN').save()
        def usuarioUno = new User(username: 'admin', password: 'admin',enabled: 'true', name: 'VICTOR HUGO PACO FLORES', ci: '4961128', email: 'victor.paco.flores@gmail.com').save()
        def usuarioRol = new UserRole(user: usuarioUno, role: rolUno).save()
        def rolDos = new Role(authority: 'ROLE_USER').save() */
    }
    def destroy = {
    }

}
