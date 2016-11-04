//
//  ViewController.m
//  MNEmail
//
//  Created by Student P_10 on 03/11/16.
//  Copyright © 2016 Mrunalini Nemade. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSDictionary *data;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    data=[[NSDictionary alloc]init];
    
    
    firebasedatabase = [FIRDatabase database];
    
    [firebasedatabase setPersistenceEnabled:YES];
    
    firebaseReference = [firebasedatabase reference];
    
    [firebaseReference keepSynced:YES];
    
    
    
    
   }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)createDatabase
{
    NSString *userNameString = _userName.text;
    NSString *passwordString = _passwordTextField.text;
    
    data=@{@"userNameKey":userNameString,
           @"passwordKey":passwordString};
    

}



- (IBAction)actionSave:(id)sender {
    
    [self createDatabase];
    
    [[[firebaseReference child:@"Login"]childByAutoId]setValue:data withCompletionBlock:^(NSError * _Nullable error, FIRDatabaseReference * _Nonnull ref) {
        NSLog(@"Saved Successfully!!!");
        
        NSLog(@"%@",error.localizedDescription);
    }];
    
    
               
    
    
    
}
@end
