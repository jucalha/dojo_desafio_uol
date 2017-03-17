  	Dado(/^que esteja no site do Google$/) do                                                                       
  visit 'http://www.google.com.br'                                  
end                                                                                                             
                                                                                                                
Quando(/^pesquisar um site especifico$/) do                                                                     
  fill_in('lst-ib', :with => 'UOL') 
  click_button(id="_fZl")                                
end                                                                                                             
                                                                                                                
Quando(/^selecionar o link UOL \- O melhor conteúdo$/) do                                                       
  click_link('UOL - O melhor conteúdo')                                  
end                                                                                                             
                                                                                                                
Quando(/^valdar que estou no site UOL$/) do                                                                     
  has_xpath?(".//*[@id='topo']/div[2]/h1/a")                        
end                                                                                                             
                                                                                                                
Quando(/^selecionar o link Economia$/) do       
  page.find(:xpath,".//*[@id='menuHorizontal']/div/div/ul/li[5]/a").click           
end                                                                                                             
                                                                                                                
Então(/^comparar o valor do dolar se menor (\d+),(\d+) teste encerra com sucesso senão falha$/) do |arg1, arg2| 
  valor_a_comparar = arg1 + "." + arg2
  dolar = page.find(:xpath,".//*[@id='cambio']/ul/li[1]/p[2]")
  valor_dolar = dolar.text.split(/ /).last
  valor_dolar = valor_dolar.gsub(",", ".")
  unless valor_dolar.to_f <= valor_a_comparar.to_f
  	fail "Dolar acima de " + valor_a_comparar
  end

end                                                                                         
                                                                                                                