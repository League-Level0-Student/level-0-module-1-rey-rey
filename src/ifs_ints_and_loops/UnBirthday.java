package ifs_ints_and_loops;
import javax.swing.JOptionPane;
import java.util.Date;
import java.text.SimpleDateFormat;

public class UnBirthday {
	
	public static void main(String[] args) {
		new UnBirthday();
		
	}
	
	public UnBirthday()
	{
		String bday = AskBday();
		System.out.println(bday);
		
		Date today = new Date();
		SimpleDateFormat format = new SimpleDateFormat("MM/dd");
		String todayFormat = format.format(today);
		
		String message = null;
		if (bday.equals(todayFormat))
		{
			message = "Happy Bday";
		}
		else
		{
			message = "Very Merry UnBday";
		}
		JOptionPane.showMessageDialog(null, message );
	}

	private String AskBday()
	{
		return JOptionPane.showInputDialog("what is your bday? MM/dd");
	}
}
