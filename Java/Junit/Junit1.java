public class Junit1 {
    public static int max2Int(int a, int b) {
        if (a > b) {
            return a;
        }
        
        return b;
    }

    public static int minArray(int[] arr) {
        int length = arr.length, min = arr[0];
        for (int i = 1; i < length; i++) {
            if (arr[i] < min) {
                min = arr[i];
            }
        }
        return min;
    }

    public static String calculateBMI(double weight, double height) {
        double BMI = weight / (height * height);
        BMI = Math.round(BMI * 10.0) / 10.0;
        if (BMI < 18.5) {
            return "Thiếu cân";
        }
        else if (BMI < 23) {
            return "Bình thường";
        }
        else if (BMI < 25) {
            return "Thừa cân";
        }
        else {
            return "Béo phì";
        }
    }
}
    

