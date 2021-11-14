
// Added by the Spring Security Core plugin:
grails.plugin.springsecurity.userLookup.userDomainClassName = 'cumsa.User'
grails.plugin.springsecurity.userLookup.authorityJoinClassName = 'cumsa.UserRole'
grails.plugin.springsecurity.authority.className = 'cumsa.Role'
grails.plugin.springsecurity.successHandler.defaultTargetUrl = '/main/index'
grails.plugin.springsecurity.securityConfigType = "Annotation"
grails.plugin.springsecurity.controllerAnnotations.staticRules = [
    [pattern: '/',               access: ['permitAll']],
    [pattern: '/error',          access: ['permitAll']],
    [pattern: '/index',          access: ['permitAll']],
    [pattern: '/index.gsp',      access: ['permitAll']],
    [pattern: '/shutdown',       access: ['permitAll']],
    [pattern: '/assets/**',      access: ['permitAll']],
    [pattern: '/**/js/**',       access: ['permitAll']],
    [pattern: '/**/css/**',      access: ['permitAll']],
    [pattern: '/**/images/**',   access: ['permitAll']],
    [pattern: '/**/favicon.ico', access: ['permitAll']],
    /* [pattern: '/maincumsa/register',  access: ['permitAll']],
    [pattern: '/maincumsa/index',  access: ['permitAll']],
    [pattern: '/maincumsa/saveUSer',  access: ['permitAll']],
    [pattern: '/maincumsa/welcome',  access: ['permitAll']],
    [pattern: '/maincumsa/asignar',  access: ['permitAll']] */    
]

grails.plugin.springsecurity.filterChain.chainMap = [
    [pattern: '/assets/**',      filters: 'none'],
    [pattern: '/**/js/**',       filters: 'none'],
    [pattern: '/**/css/**',      filters: 'none'],
    [pattern: '/**/images/**',   filters: 'none'],
    [pattern: '/**/favicon.ico', filters: 'none'],
    [pattern: '/**',             filters: 'JOINED_FILTERS']
]
