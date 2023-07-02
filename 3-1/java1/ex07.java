public class ex07 {
    public static void main(String[] args) {

        int[][] input = {

                { 1, 0, 1, 0, 1, 1, 1, 1 },

                { 1, 0, 0, 0, 0, 0, 1, 1 },

                { 0, 1, 0, 0, 0, 0, 0, 0 },

                { 1, 1, 1, 1, 0, 0, 0, 0 },

                { 1, 0, 1, 1, 1, 0, 0, 1 },

                { 0, 0, 0, 0, 0, 1, 1, 1 },

                { 1, 1, 1, 1, 1, 1, 1, 1 },

                { 0, 1, 1, 1, 1, 0, 0, 0 } };



        for (int a=0; a < input.length; a++)

        {

            for( int a2=0; a2 < input[a].length; a2++ )

            {

                System.out.printf("%d ", input[a][a2] );

            }

            System.out.printf("%d\n", s(input[a]));

        }



        for( int a2=0; a2 < input[0].length; a2++) {

            System.out.printf("%d ", s2(input, a2));

        }

        System.out.print("0");

        System.out.println();

    }





    public static int s( int arr[])

    {

        int sum = 0;

        for (int b : arr)

            sum += b;

        if(sum % 2 == 0)

            return 0;

        else

            return 1;

    }



    public static int s2(int [][] arr, int a2)

    {

        int sum = 0;

        for(int a=0; a < arr.length; a++)

            sum += arr[a][a2];

        if(sum % 2 == 0)

            return 0;

        else

            return 1;

    }
}
