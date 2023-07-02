//3주차



import java.util.Scanner;



public class ex03 {

    public static void main( String[] args )

    {

        Scanner input = new Scanner( System.in );

        double celsius;



        System.out.print( "Celsius: " );

        celsius = input.nextDouble();



        System.out.println( "Fahrenheit: " + (celsius*1.8 + 32));



    }



}

//화씨 = 9/5섭씨(double) + 32 >> print