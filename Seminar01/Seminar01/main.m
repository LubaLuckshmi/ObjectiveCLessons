//
//  main.m
//  Seminar01
//
//  Created by Admin on 01.03.2024.
//

#import <Foundation/Foundation.h>
bool alphabetContains(NSString *character) {
    int code = [character characterAtIndex:0];
    return (code >= 65 && code <= 122);
        
}
int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        int a = 2;
//        a *= a;
////        int squareA = a*a;
//        NSLog(@"%i", a);
//        
//        int b = 8, c = 16;
//        NSLog(@"a = %i, b= %i, c = %i", a, b, c);
//        
//        int d,f, g;
//        scanf("%d", &d);
//        scanf("%d", &f);
//        scanf("%d", &g);
//        
//        NSLog(@"%i", d + f + g);
        
//        int h, i;
//        scanf("%d", &h);
//        scanf("%d", &i);
//        NSLog(@"%i + %i = %i", h, i, h + i);
//        NSLog(@"%i - %i = %i", h, i, h - i);
//        NSLog(@"%i : %i = %f", h, i, (double)h / (double)i);
//        NSLog(@"%i * %i = %i", h, i, h * i);
//        NSLog(@"%i %% %i = %i", h, i, h % i);
//        NSLog(@" + is %i\n - is %i\n : is %f\n  * is %i\n  %%  is %i ", h + i, h - i, (double)h / (double)i, h * i, h % i);
        
//        NSLog(@"%d", alphabetContains(@"7"));
//        
        
        char array[5];
        scanf("%s", array);
        NSString *string = [NSString stringWithCString:array encoding:NSUTF8StringEncoding];
//        for (int i = 0; i < string.length; i++) {
//            NSLog(@"%c", [string characterAtIndex:i]);
//        }
        int i = 0;
//        while(i < string.length) {
//            NSLog(@"%c", [string characterAtIndex:i]);
//            i++;
//        }
        do {
            NSLog(@"%c", [string characterAtIndex:i]);
            i++;
        } while (i < string.length );
    }
    return 0;
}

