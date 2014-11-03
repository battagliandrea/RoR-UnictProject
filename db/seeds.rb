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



Product.create!(title: 'Pallone pallavolo MVA330',
                description:
                    %{
         Ideato per le partite di pallavolo e la pratica intensiva in palestra.
        Pallone ufficiale FIVB e approvato FIVB.
       Questo pallone da pallavolo ha una rotazione più stabile.
      },
                image_url: 'ball_1.jpg',
                price: 36.95)

Product.create!(title: 'Maglia pallavolo uomo blu',
                description:
                    %{
         Ideato per giocare a pallavolo, in allenamento e in partita.
 Questa maglia per la pallavolo è composta da un tessuto leggero e traspirante!
      },
                image_url: 'maglia_pallvolo.jpg',
                price: 17.45)

Product.create!(title: 'Set Beach Volley BV300',
                description:
                    %{
          Ideato per il giocatore di pallavolo outdoor che pratica con frequenza occasionale o regolare.
 Multisport: beachvolley, soccer,minivolley.
      },
                image_url: 'rete_beach.jpg',
                price: 17.45)



Product.create!(title: 'Pallone rugby ALL BLACKS',
                description:
                    %{
           Ideato per gli allenamenti di rugby, con frequenza regolare.
 Questo pallone da rugby possiede i colori degli All Blacks!
      },
                image_url: 'rugby_ball.jpg',
                price: 20.45)




Product.create!(title: 'Maglia rugby adulto Full 300 blu',
                description:
                    %{
          deato per giocare a rugby, in allenamento e nel tempo libero. Maglia ideale per giocare a rugby occasionalmente!
 Resistente e leggera, per un comfort ottimale!
      },
                image_url: 'rete_beach.jpg',
                price: 13.95)


Product.create!(title: 'Casco rugby FULL H 500 nero',
                description:
                    %{
           Ideato per la protezione del giocatore.
 Segue perfettamente la forma della testa.
 Questo casco da rugby è conforme alla norma dell'IRB.
In particolare, viene indossato dai nostri partner internazionali Bernard Le Roux e Juandré Kruger.
      },
                image_url: 'casco_rugby.jpg',
                price: 37.45)

Product.create!(title: 'Pallone basket GG7',
                description:
                    %{
          Ideato per il giocatore di pallavolo outdoor che pratica con frequenza occasionale o regolare.
 Multisport: beachvolley, soccer,minivolley.
      },
                image_url: 'ball_basket.jpg',
                price: 80.00)

s

Product.create!(title: 'Canotta Heat replica Lebron James',
                description:
                    %{
           Ideato per giocare a pallacanestro con frequenza occasionale.
 Prodotto ufficiale NBA! .
      },
                image_url: 'basket_shirt.jpg',
                price: 29.95)

Product.create!(title: 'Kit basket adulto B700 plexi',
                description:
                    %{
           Ideato per giocare a pallacanestro a casa propria con frequenza intensiva.
 Compatibile con l'accessorio per il fissaggio a muro.
 Il kit da pallacanestro B700 comprende tabellone, cerchio e rete.
 Il tabellone in plexiglass offre una qualità di rimbalzo migliore.
      },
                image_url: 'canestro.jpg',
                price: 109.95)


Product.create!(title: 'Tapis roulant Domyos TC3',
                description:
                    %{
           Ideato per scoprire la pratica del running e mantenersi in forma a casa propria
. Il miglior rapporto qualità/prezzo per rimettersi in forma!
      },
                image_url: 'tapis.jpg',
                price: 399.00)


Product.create!(title: 'Mountain bike Rockrider 500 S',
                description:
                    %{
           Ideato per i mountain biker che praticano escursionismo sportivo in campagna o in montagna.
 Telaio ammortizzato, forcella bloccabile, freni a disco!
 Pedalerai comodamente e supererai le discese in assoluta sicurezza!
      },
                image_url: 'bike.jpg',
                price: 459.95)







