require "poker"

Before do
  @poker = Poker.new
end

Dado(/^que o jogador (\d+) tem as cartas "(.*?)"$/) do |numero_do_jogador, cartas|
  @poker.carregar_cartas(numero_do_jogador, cartas)
end

Então(/^o vencedor deve ser o jogador (\d+)$/) do |arg1|
  @poker.vencedor.should == arg1
end

Então(/^deve ser empate$/) do
  @poker.vencedor.should == 'empate'
end