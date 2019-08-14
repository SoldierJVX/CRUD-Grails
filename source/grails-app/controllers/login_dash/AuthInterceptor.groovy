package login_dash


class AuthInterceptor {

    AuthInterceptor() {
        matchAll()
        .except(controller: "auth")
    }

    boolean before() {
        if (!session.user && actionName != "auth") {
            flash.message = "Necessário Autenticação!"
            redirect(controller: "auth")
            return false
        }
        return true
    }

    boolean after() { true }

    void afterView() {
        // no-op
    }
}
