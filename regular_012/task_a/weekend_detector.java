import java.util.Scanner;

class WeekendDetector {
    public static void main( String[] args ) {
	Scanner stdin = new Scanner( System.in );
	String day = stdin.next();

	String[] weeks = { "Monday", "Tuesday", "Wednesday", "Thursday", "Friday" };

	int answer = 0;
	for( int i = 0; i < weeks.length; i++ ){
	    if (day.equals( weeks[i] ) ) {
		answer = 5 - i;
		break;
	    }
	}
	System.out.println( answer );
    }
}
