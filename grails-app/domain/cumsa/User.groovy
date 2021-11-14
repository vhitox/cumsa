package cumsa

import groovy.transform.EqualsAndHashCode
import groovy.transform.ToString
import grails.compiler.GrailsCompileStatic

@GrailsCompileStatic
@EqualsAndHashCode(includes='username')
@ToString(includes='username', includeNames=true, includePackage=false)
class User implements Serializable {

    private static final long serialVersionUID = 1

    String username
    String password
    boolean enabled = true
    boolean accountExpired
    boolean accountLocked
    boolean passwordExpired
    String name
    String ci
    String email
    String activateKey
    Boolean userState = false
    Boolean courseraState = false
    String userType

    Set<Role> getAuthorities() {
        (UserRole.findAllByUser(this) as List<UserRole>)*.role as Set<Role>
    }

    static constraints = {
        password nullable: false, blank: false, password: true
        username nullable: false, blank: false, unique: true
        name nullable: true, maxSize: 250
        ci nullable: true, maxSize: 200
        email nullable: true, maxSize: 250
        activateKey nullable: true, maxSize: 250
        userState nullable: true
        courseraState nullable: true
        userType nullable: true, maxSize: 250
    }

    static mapping = {
        password column: '`password`'
    }

}
