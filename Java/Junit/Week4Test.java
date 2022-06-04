import org.junit.Test;
import org.junit.Assert;

public class Week4Test {
    @Test
    public void testMax2Int1() {
        int a= 2, b= 4;
        Assert.assertEquals(2, Week4.max2Int(a, b));
    }
    @Test
    public void testMax2Int2() {
        int a= -2, b= -4;
        Assert.assertEquals(-4, Week4.max2Int(a, b));
    }
    @Test
    public void testMax2Int3() {
        int a= 2, b= -4;
        Assert.assertEquals(2, Week4.max2Int(a, b));
    }
    @Test
    public void testMax2Int4() {
        int a= 0, b= 0;
        Assert.assertEquals(0, Week4.max2Int(a, b));
    }
    @Test
    public void testMax2Int5() {
        int a= -2, b= -2;
        Assert.assertEquals(-2, Week4.max2Int(a, b));
    }

    @Test
    public void testMinArray1() {
        int[] arr = {16,7,61,4,13,81,6,55,24,14,111,86,186,511,64,104,16,3,97,137,114,41,435,317,56,78,75,53,4,365,4537,78,55};
        Assert.assertEquals(3,Week4.minArray(arr));
    }
    @Test
    public void testMinArray2() {
        int[] arr = {16,7,-61,4,13,81,6,-55,24,14,111,86,-186,511,64,-104,16,3,97,137,114,41,435,-317,56,78,75,-53,4,365,4537,-78,55};
        Assert.assertEquals(-317,Week4.minArray(arr));
    }
    @Test
    public void testMinArray3() {
        int[] arr = {1};
        Assert.assertEquals(1, Week4.minArray(arr));
    }
    @Test
    public void testMinArray4() {
        int[] arr = {1,1,1,1,1,1,1,1,1,1};
        Assert.assertEquals(1, Week4.minArray(arr));
    }
    @Test
    public void testMinArray5() {
        int[] arr = {899719,341751,713735,314163,715353,711353,848354,143503,433587,634131,338925,186028,631253,512856};
        Assert.assertEquals(143503, Week4.minArray(arr));
    }

    @Test
    public void testCalculateBMI1() {
        double w= 52, h= 1.7;
        Assert.assertEquals("Thiếu cân", Week4.calculateBMI(w, h));
    }
    @Test
    public void testCalculateBMI2(){
        double w= 62, h= 1.7;
        Assert.assertEquals("Bình thường", Week4.calculateBMI(w, h));
    }
    @Test
    public void testCalculateBMI3() {
        double w= 72, h= 1.7;
        Assert.assertEquals("Thừa cân", Week4.calculateBMI(w, h));
    }
    @Test
    public void testCalculateBMI4() {
        double w= 82, h= 1.7;
        Assert.assertEquals("Béo phì", Week4.calculateBMI(w, h));
    }
    @Test
    public void testCalculateBMI5() {
        double w= 92, h= 1.7;
        Assert.assertEquals("Béo phì", Week4.calculateBMI(w, h));
    }
}