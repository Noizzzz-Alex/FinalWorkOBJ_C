//
//  SolutionService.m
//  FinalWorkOBJ_C
//
//  Created by Александр Харлампов on 24.01.2024.
//

#import "SolutionService.h"

@implementation SolutionService

+ (void)startSolution:(float)coefficientA coefficientB:(float)coefficientB coefficientC:(float)coefficientC {
    float discriminant = coefficientB * coefficientB - 4 * coefficientA * coefficientC;

    if (discriminant > 0) {
        float rootFirst = (-coefficientB + sqrt(discriminant)) / (2 * coefficientA);
        float rootSecond = (-coefficientB - sqrt(discriminant)) / (2 * coefficientA);
        NSLog(@"Уравнение имеет два различных корня:");
        NSLog(@"Корень 1: %f", rootFirst);
        NSLog(@"Корень 2: %f", rootSecond);
    } else if (discriminant == 0) {
        float rootOne = -coefficientB / (2 * coefficientA);
        NSLog(@"Уравнение имеет один корень:");
        NSLog(@"Корень: %f", rootOne);
    } else {
        NSLog(@"Уравнение не имеет корней.");
    }
}

@end
