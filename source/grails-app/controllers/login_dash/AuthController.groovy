package login_dash

class AuthController {

    def index() { }

    def auth() {

    	def u = User.findByLogin(params.login)

	    if (u) {
	        if (u.password == params.password) {
	            session.user = u
	            redirect(controller: "item")
	        }
	        else {
	        	flash.message = "Usuário ou senha incorretos."
            	redirect(controller: "auth")
	        }
	    }
	    else {
	    	flash.message = "Usuário não encontrado"
            redirect(controller: "auth")
	    }

     }

     def logoff(){

     	session.user = null
     	redirect(controller: "auth")

     }
}
