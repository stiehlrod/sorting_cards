require 'minitest/autorun'
require 'minitest/pride'
require './lib/guess'
require './lib/card'
require 'pry'

class GuessTest < Minitest::Test

  def test_it_exists
    card = Card.new("10","Hearts")
    guess = Guess.new("Ace of Spades",card)
    assert_instance_of Guess, guess
  end

    def test_it_has_a_card
      card = Card.new("10","Hearts")
      guess = Guess.new("Ace of Spades", card)
      assert_instance_of Card, guess.card
    end

      def test_it_has_a_response
        card = Card.new("10","Hearts")
        guess = Guess.new("10 of Hearts", card)
        assert_equal "10 of Hearts", guess.response
      end

  def test_guess_is_correct?
    card = Card.new("10","Hearts")
    guess = Guess.new("10 of Hearts", card)
    assert_equal true, guess.correct?
  end

  def test_returns_feedback
    card = Card.new("10","Hearts")
    guess = Guess.new("10 of Hearts", card)
    assert_equal "Correct!", guess.feedback
  end
  
  def test_a_different_card
      card = Card.new("Queen","Clubs")
      guess = Guess.new("2 of Diamonds", card)
      assert_instance_of Card, guess.card
    end

    def test_it_has_a_different_response
      card = Card.new("Queen","Clubs")
      guess = Guess.new("2 of Diamonds", card)
      assert_equal "2 of Diamonds", guess.response
    end

    def test_guess_is_incorrect?
      card = Card.new("Queen","Clubs")
      guess = Guess.new("2 of Diamonds", card)
      assert_equal false, guess.correct?
    end

    def test_returns_feedback
      card = Card.new("Queen","Clubs")
      guess = Guess.new("2 of Diamonds", card)
      assert_equal "Incorrect.", guess.feedback
    end
end
