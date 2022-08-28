class Turn
  attr_reader :player1, :player2, :spoils_of_war
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @spoils_of_war = []
  end


  def type
          # while @player1.deck.cards.count >=1 
          # while @player2.deck.cards.count >=1 

    if @player1.deck.rank_of_card_at(0) != @player2.deck.rank_of_card_at(0)
      return :basic
  
    elsif @player1.deck.rank_of_card_at(0) == @player2.deck.rank_of_card_at(0)
      return :war
require 'pry';binding.pry
    elsif  @player1.deck.rank_of_card_at(0) == @player2.deck.rank_of_card_at(0) && @player1.deck.rank_of_card_at(2) == @player2.rank_of_card_at(2)
      return :mutually_assured_destruction
    end
  end

  def winner
        if type == :mutually_assured_destruction
        return "No Winner"
        end
      
        
        if type == :basic
        (@player1.deck.rank_of_card_at(0) > @player2.deck.rank_of_card_at(0))
        return @player1 
        else 
        return @player2
        end
      
        if type ==  :war 
        (@player1.deck.rank_of_card_at(2) > @player2.deck.rank_of_card_at(2))
        return @player1
        else
        return @player2
        end        
  end

  def pile_cards
    if type == :basic
      @spoils_of_war << @player1.deck.remove_card
      @spoils_of_war <<  @player2.deck.remove_card
    
  elsif type == :war
    # require 'pry';binding.pry
    3.times { @spoils_of_war << ( @player1.deck.remove_card) }
    3.times { @spoils_of_war << ( @player2.deck.remove_card) }
    # require 'pry';binding.pry
      
  
      end
      # @player1.deck.cards.take_while 
      # != @player1.deck.cards.index(2).empty?
      
      # remove_card


      # @spoils_of_war <<  (@player2.deck.remove_card)

    # end
    # :mutually_assured_destruction turn, each player will remove three cards from play (the top three cards in their deck). These cards are not sent to the spoils pile, they are simply removed from each players deck.
    # turn.player2.deck.cards.delete_at(1..3)
    
  end

  def award_spoils(winner)
    winner.deck.cards.concat(@spoils_of_war)
  end

end