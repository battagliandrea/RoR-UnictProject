module StoreHelper
#PRENDE UNA CONDIZIONE UN SET DI ATTRIBUTI E UN BLOCCO
#E RACCHIUDE L'OUTPUT DENTRO UN div
  def hidden_div_if(condition, attributes = {}, &block)
    if condition
      attributes["style"] = "display: none"
    end
    #con &block PASSO A content_tag IL BLOCCO FORNITO AL METODO
    content_tag("div", attributes, &block)
    end
end
