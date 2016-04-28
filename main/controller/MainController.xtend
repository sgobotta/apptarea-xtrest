package controller

import org.uqbar.xtrest.api.annotation.Controller
import org.uqbar.xtrest.api.annotation.Get
import org.uqbar.xtrest.api.XTRest
import dado.Dado
import dado.PedidoDeDados

@Controller
class MainController {

    @Get("/tirar_dados")
    def tirarDados() {
        
        var resultado = new Dado().tirarDadoDeSeisCaras
        
        response.contentType = "text/html"
        ok("<h2>" + resultado + "</h2")
    }
    
    @Get("tirar_dados/:dados")
    def tirarUnaCantidadDeDados() {
        //val pedidoDeDados = new PedidoDeDados(dados)
        
    }

    def static void main(String[] args) {
        XTRest.start(MainController, 9000)
    }

}