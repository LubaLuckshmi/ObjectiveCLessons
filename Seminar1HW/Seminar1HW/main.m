//
//  main.m
//  Seminar1HW
//
//  Created by Admin on 01.03.2024.
//

#import <Foundation/Foundation.h>
//Решить квадратные уравнения:
//x^2 – 8x + 12 = 0,
//12x^2 – 4x + 2 = 0,
//x^2 – 100x - 2 = 0

//Создать программу, которая находит большее число среди 3-х чисел.


void quadraticEquation(double a, double b, double c) {
    
    double discriminant = b*b - 4*a*c;
    if (discriminant > 0) {
        float x1 = (-b + sqrt(discriminant)) / (2*a);
        float x2 = (-b - sqrt(discriminant)) / (2*a);
        NSLog(@"Корни уравнения: x1 = %f, x2 = %f", x1, x2);
    } else if (discriminant == 0) {
        float x = -b / (2*a);
        NSLog(@"Уравнение имеет один корень: x = %f", x);
    } else {
        NSLog(@"Уравнение не имеет действительных корней");
    }
}

int findMax(int num1, int num2, int num3) {
    if (num1 >= num2 && num1 >= num3) {
        return num1;
    } else if (num2 >= num1 && num2 >= num3) {
        return num2;
    } else {
        return num3;
    }
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        quadraticEquation(1, -8, 12);
        quadraticEquation(12, -4, 2);
        quadraticEquation(1, -100, -2);
        
        int num1, num2, num3;
        
        printf("Введите три числа через пробел: ");
        scanf("%d %d %d", &num1, &num2, &num3);
        
        int maxNum = findMax(num1, num2, num3);
        NSLog(@"Наибольшее число: %d", maxNum);
    }
        
        return 0;
    
}
