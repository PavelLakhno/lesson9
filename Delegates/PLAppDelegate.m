//
//  PLAppDelegate.m
//  Delegates
//
//  Created by Pavel on 03/06/2016.
//  Copyright (c) 2016 Pavel Lakhno. All rights reserved.
//

#import "PLAppDelegate.h"
#import "PLPatient.h"
#import "PLDoctor.h"
#import "PLSecondDoctor.h"

@implementation PLAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    PLPatient* patient1 = [[PLPatient alloc]init];
    patient1.name = @"Alex";
    patient1.part = PLPartBodyHead;
    patient1.temperature = 37.4f;

    
    PLPatient* patient2 = [[PLPatient alloc]init];
    patient2.name = @"Olga";
    patient2.part = PLPartBodyHead;
    patient2.temperature = 39.4f;
    
    PLPatient* patient3 = [[PLPatient alloc]init];
    patient3.name = @"Timur";
    patient3.part = PLPartBodyStomach;
    patient3.temperature = 34.0f;
    
    PLPatient* patient4 = [[PLPatient alloc]init];
    patient4.name = @"Anna";
    patient4.part = PLPartBodyLeg;
    patient4.temperature = 36.7f;
    
    PLPatient* patient5 = [[PLPatient alloc]init];
    patient5.name = @"AnnaKarenina";
    patient5.part = PLPartBodyHand;
    patient5.temperature = 37.0f;

    
    PLPatient* patient6 = [[PLPatient alloc]init];
    patient6.name = @"TimurTimoti";
    patient6.part = PLPartBodyHand;
    patient6.temperature = 40.0f;
    
    PLPatient* patient7 = [[PLPatient alloc]init];
    patient7.name = @"Sofia";
    patient7.part = PLPartBodyStomach;
    patient7.temperature = 39.6f;
    
    PLDoctor* doctor = [[PLDoctor alloc] init];
    PLSecondDoctor* doctorBad = [[PLSecondDoctor alloc] init];
    
  
    NSArray* array = [NSArray arrayWithObjects:patient1, patient2, patient3, patient4, patient5, patient6, patient7, nil];
    for (PLPatient* obj in array){
        BOOL doctorIsGood = arc4random()%2;
        if (doctorIsGood) {
            obj.delegate = doctor;
        } else obj.delegate = doctorBad;
        
        obj.nausea = arc4random()%2;
        [obj.delegate patientFeelsBad:obj];
        
    }
    
    
    for (PLPatient* obj in array) {
        obj.delegate = doctor;
        [obj howAreYou];
        NSLog(@"patient %@ apreciated doctor = %ld", obj.name, obj.doctorGrade);
        if (obj.doctorGrade < 3) {
            obj.delegate = doctorBad;
            [obj howAreYou];
        }
    } 
    NSLog(@"---------------------Raport------------------");
    NSLog(@"%@",doctor.dic);
   
    
    
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
