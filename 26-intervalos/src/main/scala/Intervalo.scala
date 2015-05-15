object Intervalo {

  def agrupar(lista : List[Int]): List[List[Int]] = {
  	var resultado:List[List[Int]] = List()
  	var ultimoInteiro: Option[Int] = None;
  	var listaAtual: List[Int] = List()
  	lista.sorted.foreach(item => {
  		if (!ultimoInteiro.isEmpty && item - ultimoInteiro.get == 1) {
			if(listaAtual.size == 2){
				listaAtual = List(listaAtual(0), item)
			}
			else {
				listaAtual =  listaAtual :+ item
  			}
  		} else {
  			if (!ultimoInteiro.isEmpty) {
  				resultado = resultado :+ listaAtual
  			}
  			listaAtual = List(item)
  		}
  		ultimoInteiro = Option(item)
  	});
	resultado = resultado :+ listaAtual

  	resultado
  	// lista.sorted.map(List(_))
  }

  def main(args: Array[String]): Unit = {
    println("Hello, world!")
  }
}
