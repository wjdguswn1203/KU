import java.util.Random;

// 주사위 굴리기 모의실험 : 주사위 6000번 돌리고 각 숫자 몇 번 발생하는 지 출력
public class 09_01 {
	
	public static void main (String[] args ) {
		Random randomnum = new Random();
		int count1 = 0; int count2 =0; int count3=0; int count4=0;int count5=0;int count6=0; 
		for(int i=0; i<6000; i++) {
			int dice = 1 + randomnum.nextInt(6);
			switch(dice) {
			case 1: dice = 1;
				count1 += 1;
				break;
			case 2: dice = 2;
				count2 += 1;
				break;
			case 3: dice = 3;
				count3 += 1;
				break;
			case 4: dice = 1;
				count4 += 1;
				break;
			case 5: dice = 2;
				count5 += 1;
				break;
			case 6: dice = 3;
				count6 += 1;
				break;
			}
		}
		System.out.println("1: " + count1 + "\n");
		System.out.println("2: " + count2 + "\n");
		System.out.println("3: " + count3 + "\n");
		System.out.println("4: " + count4 + "\n");
		System.out.println("5: " + count5 + "\n");
		System.out.println("6: " + count6 + "\n");
	}
	
	
}
