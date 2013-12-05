require "mao"

Before do
  @mao = Mao.new
end

Dado(/^uma mão com as cartas "(.*?)"$/) do |arg1|
  @mao.carregar_cartas(arg1)
end

Então(/^a carta maior sera "(.*?)"$/) do |arg1|
  @mao.carta_maior.should == arg1
end

Então(/^a jogada sera "(.*?)"$/) do |arg1|
  @mao.jogada.should == arg1
end