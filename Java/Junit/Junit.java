import org.junit.Test;
import org.junit.Assert;

public class Junit {
    @Test
    public void testMax2Int1() {
        int a= 10, b= 5;
        Assert.assertEquals(5, Junit.max2Int(a, b));
    }
    @Test
    public void testMax2Int2() {
        int a= 1, b= 5;
        Assert.assertEquals(1, Junit.max2Int(a, b));
    }
    @Test
    public void testMax2Int3() {
        int a= 5, b= 10;
        Assert.assertEquals(10, Junit.max2Int(a, b));
    }
    @Test
    public void testMax2Int4() {
        int a= -1, b=0 ;
        Assert.assertEquals(0, Junit.max2Int(a, b));
    }
    @Test
    public void testMax2Int5() {
        int a= -1, b= -5;
        Assert.assertEquals(-1, Junit.max2Int(a, b));
    }

    @Test
    public void testMinArray1() {
        int[] arr = {1,2,3,4,5,6,7,8,9,10};
        Assert.assertEquals(1,Junit.minArray(arr));
    }
    @Test
    public void testMinArray2() {
        int[] arr = {2,3,11,2,33,-1,10,22,111};
        Assert.assertEquals(-1,Junit.minArray(arr));
    }
    @Test
    public void testMinArray3() {
        int[] arr = {404,401,505,616,200,101,212,1};
        Assert.assertEquals(1, Junit.minArray(arr));
    }
    @Test
    public void testMinArray4() {
        int[] arr = {113,113,113};
        Assert.assertEquals(113, Junit.minArray(arr));
    }
    @Test
    public void testMinArray5() {
        int[] arr = {176};
        Assert.assertEquals(176, Junit.minArray(arr));
    }

    @Test
    public void testCalculateBMI1() {
        double w= 45.2, h= 1.3;
        Assert.assertEquals("Thiếu cân", Junit.calculateBMI(w, h));
    }
    @Test
    public void testCalculateBMI2(){
        double w= 60.1, h= 1.65;
        Assert.assertEquals("Bình thường", Junit.calculateBMI(w, h));
    }
    @Test
    public void testCalculateBMI3() {
        double w= 45.2, h= 1.8;
        Assert.assertEquals("Thừa cân", Junit.calculateBMI(w, h));
    }
    @Test
    public void testCalculateBMI4() {
        double w= 45.2, h= 1.66;
        Assert.assertEquals("Béo phì", Junit.calculateBMI(w, h));
    }
    @Test
    public void testCalculateBMI5() {
        double w= 68.6, h= 1.8;
        Assert.assertEquals("Béo phì", Junit.calculateBMI(w, h));
    }
}