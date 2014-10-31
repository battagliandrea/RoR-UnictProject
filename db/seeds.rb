#---
# Excerpted from "Agile Web Development with Rails",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/rails4 for more book information.
#---
# encoding: utf-8
Product.delete_all
Product.create!(title: 'Maglia da calcio Juventus FC 2014/15(Casa)',
                description:
                    %{
        La maglia da calcio Juventus FC Stadium 2014/15 -
        Uomo è realizzata in tessuto traspirante per una leggerezza e un comfort imbattibili.
        Con stemma della squadra in tessuto e dettagli grafici in stile replica,
        questa maglia replica della prima divisa rende omaggio alla tua squadra del cuore.
      },
                image_url:   'http://www.soccerfollowers.net/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/p/l/player_version_juventus_home_jersey_14-15_1_2.jpg',
                price: 121.00)
# . . .
Product.create!(title: 'Maglia da calcio Juventus FC 2014/15(Trasferta)',
                description:
                    %{
        La maglia da calcio Juventus FC Stadium 2014/15 -
        Uomo è realizzata in tessuto traspirante per una leggerezza e un comfort imbattibili.
        Con stemma della squadra in tessuto e dettagli grafici in stile replica,
        questa maglia replica della seconda divisa rende omaggio alla tua squadra del cuore.
      },
                image_url: 'http://www.soccerfollowers.net/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/p/l/player_version_juventus_away_jersey_2014-15_1.jpg',
                price: 86.00)
# . . .

Product.create!(title: 'Maglia da calcio Real Madred 2014/15',
                description:
                    %{
        La maglia bianca casalinga indossata dai Blancos al Bernabeu è una divisa leggendaria.
        Arricchita da dettagli rosa che le conferiscono un look giovane,
        questa maglia Home Replica Player Real Madrid presenta tutti i segni distintivi
        di una delle migliori squadre al mondo,
        fra cui la tecnologia di ventilazione climacool® per mantenere il corpo fresco e asciutto,
        lo stemma della squadra sul cuore e lo stemma della LFP sulla manica destra.
      },
                image_url: 'http://www.soccerfollowers.net/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/r/e/real_madrid_home_soccer_jersey_2014-15__1.jpg',
                price: 90.00)