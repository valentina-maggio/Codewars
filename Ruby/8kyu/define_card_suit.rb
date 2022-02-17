=begin

You get any card as an argument. Your task is to return a suit of this card.

Our deck (is preloaded):

DECK = ['2S','3S','4S','5S','6S','7S','8S','9S','10S','JS','QS','KS','AS',
        '2D','3D','4D','5D','6D','7D','8D','9D','10D','JD','QD','KD','AD',
        '2H','3H','4H','5H','6H','7H','8H','9H','10H','JH','QH','KH','AH',
        '2C','3C','4C','5C','6C','7C','8C','9C','10C','JC','QC','KC','AC']

('3C') -> return 'clubs'
('3D') -> return 'diamonds'
('3H') -> return 'hearts'
('3S') -> return 'spades'

=end

# My solution
def define_suit(card)
  card.include?('C') ? 'clubs' : card.include?('S') ? 'spades' : card.include?('D') ? 'diamonds' : 'hearts'
end

# Alternative solution
def define_suit(card)
  deck = { 'C': 'clubs', 'D': 'diamonds', 'H': 'hearts', 'S': 'spades' }
  deck[card[-1].to_sym]
end
