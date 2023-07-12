package testtest;

class Rect {

    int w;
    int h;

    public Rect(int w, int h) {

        this.w = w;
        this.h = h;
    }

    public boolean equals(Object obj) {

        Rect p = (Rect) obj;

        if (w == p.w && h == p.h)

            return true;

        else if (w == p.h && h == p.w)

            return true;

        else

            return false;

    }

    public String toString() {
        return "w = " + w + ", h =" + h;
    }
}

public class RectTest {

    public static void main(String[] args) {

        Rect a = new Rect(2,3);

        Rect b = new Rect(3,2);

        Rect c = new Rect(1,6);

        System.out.println(a);
        System.out.println(b);
        System.out.println( c );
        System.out.println( a.equals(b) );
        System.out.println( a.equals(c) );

    }

}