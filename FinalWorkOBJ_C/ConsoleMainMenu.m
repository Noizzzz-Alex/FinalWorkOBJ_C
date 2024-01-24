//
//  ConsoleMainMenu.m
//  FinalWorkOBJ_C
//
//  Created by Александр Харлампов on 24.01.2024.
//

#import "ConsoleMainMenu.h"
#import "SolutionService.h"

@implementation ConsoleMainMenu

+ (void)menuStart {
    BOOL exit = NO;
    int choice;
    float a, b, c;
    while (!exit) {
        NSLog(@"_____________________________________________________ ");
        NSLog(@"выберите пункт меню :");
        NSLog(@"1 - решение уравнения ax^2+bx+c=0");
        NSLog(@"0 - выход из программы");
        NSLog(@"_____________________________________________________ ");
        scanf("%d", &choice);
        switch (choice) {
            case 1:
                NSLog(@"Введите коэффициенты для уравнения ax^2+bx+c=0");
                NSLog(@"Введите коэффициент a: ");
                scanf("%f", &a);
                NSLog(@"Введите коэффициент b: ");
                scanf("%f", &b);
                NSLog(@"Введите коэффициент c: ");
                scanf("%f", &c);
                [SolutionService startSolution:a coefficientB:b coefficientC:c];
                break;
            case 0:
                exit = YES;
                
        }
    }
}

@end
