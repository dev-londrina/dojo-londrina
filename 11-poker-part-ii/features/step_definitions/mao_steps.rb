require "mao"

Before do
  @mao = Mao.new
end

Dado(/^uma mão com as cartas "(.*?)"$/) do |cartas|
  @mao.carregar_cartas(cartas)
end

Então(/^a carta maior sera "(.*?)"$/) do |arg1|
  @mao.carta_maior.should == arg1
end

Então(/^a jogada sera "(.*?)"$/) do |arg1|
  @mao.jogada.should == arg1
end