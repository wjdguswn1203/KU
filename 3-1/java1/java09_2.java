package memo;
import java.util.Random;

// 성적분석 모의실험 0~100의 점수 50개 무작위 배열 저장, 출력
// 50개 평균 출력, 점수대 인원 수 막대그래프 출력, 300개로 늘려서 다시 실험
public class java09_2 {
	
	public static void main (String[] args ) {
		Random randomnum = new Random();
		int score[] = new int[51];
		int c[] = new int[11];
 		int sum = 0;
		System.out.print("score[]: ");
		for(int i=0;i<50;i++) {
			score[i] = randomnum.nextInt(101);
			System.out.printf("%s",score[i]);
			sum += score[i];
			c[score[i]/10]++;
			System.out.print(" ");
		}
		System.out.printf("\nAverage: %d\n", sum/50);
		for(int a=0;a<=10;a++) {
			switch(a) {
			case 10: System.out.print("  100:");break;
			case 9: System.out.print("99-90:");break;
			case 8: System.out.print("89-80:");break;
			case 7: System.out.print("79-70:");break;
			case 6: System.out.print("69-60:");break;
			case 5: System.out.print("59-50:");break;
			case 4: System.out.print("49-40:");break;
			case 3: System.out.print("39-30:");break;
			case 2: System.out.print("29-20:");break;
			case 1: System.out.print("19-10:");break;
			case 0: System.out.print("09-00:");break;
			}
			System.out.printf("%2d ", c[a]);
			for(int j=0;j < c[a]; j++)
				System.out.print("*");
			System.out.printf("\n");
		}
	}
	
	
}
