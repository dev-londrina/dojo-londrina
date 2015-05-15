import org.scalatest._

class IntervaloSpec extends FlatSpec with Matchers {
  "Intervalo" should "agrupar 1 elemento" in {
  	Intervalo.agrupar(List(1)) shouldBe List(List(1))
  }

  "Intervalo" should "agrupar dois elementos desordenados e fora do intervalo" in {
  	Intervalo.agrupar(List(3, 1)) shouldBe List(List(1), List(3))
  }

  "Intervalo" should "agrupar tres elementos desordenados e fora do intervalo" in {
  	Intervalo.agrupar(List(3, 5, 1)) shouldBe List(List(1), List(3), List(5))
  }

  "Intervalo" should "agrupar dois elementos desordenados e sequenciais" in {
  	Intervalo.agrupar(List(2, 1)) shouldBe List(List(1, 2))
  }

  "Intervalo" should "agrupar varios elementos desordenados em duas sequencias" in {
  	Intervalo.agrupar(List(6, 4, 5, 2, 1)) shouldBe List(List(1, 2), List(4, 6))
  }

  "Intervalo" should "dojo puzzle" in {
  	Intervalo.agrupar(List(100, 101, 102, 103, 104, 105, 110, 111, 113, 114, 115, 150)) shouldBe List(List(100, 105) , List(110, 111), List(113,115), List(150))
  }
}
