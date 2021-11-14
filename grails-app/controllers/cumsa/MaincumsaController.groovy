package cumsa

import static java.util.UUID.randomUUID
import cumsa.User
import cumsa.Role
import cumsa.UserRole
import grails.plugin.springsecurity.annotation.Secured

class MaincumsaController {

    def springSecurityService
    def mailService

    @Secured('ROLE_USER')
    def index() {        
        render 'Orale'
        return
    }

    @Secured('permitAll')
    def register() {
    }

    @Secured('permitAll')
    def saveUser() {                
        def roleGen = Role.findByAuthority("ROLE_USER")
        def usuario = new User(username: params.username, password: params.password, enabled: 'true', name: params.name, ci: params.ci, email: params.username)                
        usuario.activateKey = randomUUID() as String
        if(!usuario.save()){
            
        }else{
            def nuevoROL = new UserRole(user: usuario, role: roleGen).save()
            mailService.sendMail{
                to "victor.paco.flores@gmail.com"
                subject "Activacion de cuenta"
                html "<h1>Por Favor active su cuenta</h1> <a href='"+g.createLink(controller: 'maincumsa', action: 'active', id: usuario.activateKey, absolute: 'true')+"'>"+g.createLink(controller: 'maincumsa', action: 'active', id: usuario.activateKey, absolute: 'true')+"</a> "
            }
        }        
        redirect(action: 'welcome', controller: 'maincumsa', id: usuario.activateKey)
    }
    
    @Secured('permitAll')
    def active(){
        def user = User.findByActivateKey(params.id)     
        if(user.userState){
            /* redirect(controller: 'login', action: 'auth')
            return */
        }else{
            user.userState = true        
            if(!user.save(flush: true)){
                //render "No se activo la cuenta 5"
            }
        }     
        [user:user]
    }
    
    @Secured('permitAll')
    def welcome() {
        def user = User.findByActivateKey(params.id)
        [user: user]
    }
    
    def asignar(){
        def user = User.get(4)
        def role = Role.get(2)
        def nuevoROL = new UserRole(user: user, role: role).save()
        render user.properties
        render "----------------<br>"
        render role.properties
        render "..................<br>"
        render nuevoROL
        render "OK"
    }
    
    @Secured('permitAll')
    def correo(){
        mailService.sendMail{
            to "victor.paco.flores@gmail.com"
            subject "TEST USER"
            html "<h1>ORALE</h1>"
        }
    }
    
    @Secured('permitAll')
    def usuarios(){
        respond User.list()
    }

}
