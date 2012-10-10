require 'minitest/autorun'
require './jokenpo'

class JokenpoTest < MiniTest::Unit::TestCase
  def setup
    @jokenpo = Jokenpo.new
  end
  
  # def test_run
  #     sync = @sync.run!
  #     assert sync.saved
  #   end
  def teste_pedra_empata_com_pedra
    assert_equal 'empatou', @jokenpo.analize('pedra','pedra')
  end

  def teste_pedra_ganha_de_tesoura
    assert_equal 'jogador 1 venceu', @jokenpo.analize('pedra', 'tesoura')
  end

  def teste_pedra_perde_para_papel
    assert_equal 'jogador 1 venceu', @jokenpo.analize('papel', 'pedra')
  end
  
  def teste_tesoura_ganha_de_papel
    assert_equal 'jogador 1 venceu', @jokenpo.analize('tesoura','papel')
  end
  
  def teste_tesoura_empata_com_tesoura
    assert_equal 'empatou', @jokenpo.analize('tesoura','tesoura')
  end
  
  def teste_papel_empata_com_papel
    assert_equal 'empatou', @jokenpo.analize('papel','papel')
  end
  
  def teste_papel_perde_de_tesoura
    assert_equal 'jogador 2 venceu', @jokenpo.analize('papel','tesoura')
  end
  
  def teste_tesoura_perde_de_pedra
    assert_equal 'jogador 2 venceu', @jokenpo.analize('tesoura', 'pedra')
  end
  
  def teste_pedra_perde_de_papel
    assert_equal 'jogador 2 venceu', @jokenpo.analize('pedra', 'papel')
  end
end