//
//  main.m
//  ConsoleCalc
//
//  Created by Ильда  Залялов on 17.09.15.
//  Copyright (c) 2015 Ильда  Залялов. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        float sum;
        while(true){
            NSLog (@"Read_ME: Данная программа использует стандартные  для вычислений операторы");
            NSLog(@"Пример выражения: (2+2*2)*5-4*(2**2)/4");
        NSLog(@"Введите выражение для вычисления БЕЗ пробелов и редактирования: ");
        char word[40];
        
        scanf("%39s", word);
        @try{
        
        NSString *equation = [NSString stringWithCString:word encoding:1];;
        NSExpression *expression = [NSExpression expressionWithFormat:equation];
         sum = [[expression expressionValueWithObject:nil context:nil] floatValue];
            
        NSLog(@"Sum: %f \n", sum);
            
        }@catch(NSException *e){
            NSLog(@"%@",e);
            NSLog(@"Invalid arguments or else!");
            NSLog(@"Pleas, check the letters!");
            }
        }
        return 0;
    }
}
