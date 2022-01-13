# Perfect Shuffle Simulator

## About
Alex Elmsely is a Scottish magician and computer programmer. He used his knowledge of maths 
to create magic tricks. He discovered that if a magician could execute a certain amount of 
perfect shuffles  they could bring the deck back to its original order.

There are 2 types of perfect shuffles:
- In shuffle: This shuffle moves the bottom card to the second position from the bottom and the top card to the second position to from the top.
- Out shuffle: This shuffle leaves the original top card on top of the deck and the bottom card on the bottom of the deck during the shuffles.

The in-shuffle requires the deck to be shuffled 52 times to return to its original order.

The out-shuffle requires the deck to be shuffled 8 times to return to its original order.

## How does this relate to this program?
I've heard many people debate over whether this is possible, so I decided to write a program 
that will execute perfect shuffles on a deck until the deck returns to its original order.
The original order of the deck is:

- AS 2S 3S 4S 5S 6S 7S 8S 9S 10S JS QS KS
- AH 2H 3H 4H 5H 6H 7H 8H 9H 10H JH QH KH
- AC 2C 3C 4C 5C 6C 7C 8C 9C 10C JC QC KC
- AD 2D 3D 4D 5D 6D 7D 8D 9D 10D JD QD KD

## Results
From running this program, I have confirmed that:
- The in-shuffle does take 52 shuffles to return the deck to its original order.
- The out-shuffle does take 8 shuffles to return the deck to its original order.