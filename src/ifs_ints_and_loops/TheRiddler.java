package ifs_ints_and_loops;

import javax.swing.JOptionPane;

//    Copyright (c) The League of Amazing Programmers 2013-2017
//    Level 0



public class TheRiddler {

	public static void main(String[] args) {

		// 1. Make a variable to hold the score
		int score = 0;

		// 3. Ask the user a riddle. Here are some ideas: bit.ly/some-riddles
		score += TheRiddler.AskRiddle( "what is white and goes up", "retarded snowflake");

		// 4. If they got the answer right, pop up "correct!" and increase the score by one''

		// 5. Otherwise, say "wrong" and tell them the answer		
		

		// 6. Add some more riddles
		score += AskRiddle( "what black and white, and red all over", "book");
		
		// 2. Make a pop up to show the score.	
		JOptionPane.showMessageDialog(null, "Score = " +  score);
	}
	
	private static int AskRiddle(String riddle, String answer)
	{
		int score = 0;
		String guess = JOptionPane.showInputDialog(riddle);
		if (guess == null )
		{
			// do nothing
		}
		else if ( guess.equalsIgnoreCase(answer) )
		{
			score = 1;
			JOptionPane.showMessageDialog(null, "Correct!");
		}
		else
		{
			JOptionPane.showMessageDialog(null, "Wrong.  " + answer);
		}
		return score;
	}
}

