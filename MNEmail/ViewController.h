//
//  ViewController.h
//  MNEmail
//
//  Created by Student P_10 on 03/11/16.
//  Copyright © 2016 Mrunalini Nemade. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <firebase/Firebase.h>
#import <FirebaseDatabase/FirebaseDatabase.h>

@import FirebaseDatabase;



@interface ViewController : UIViewController
{
    FIRDatabase *firebasedatabase;
    FIRDatabaseReference *firebaseReference;
    
}

@property (strong, nonatomic) IBOutlet UITextField *userName;

@property (strong, nonatomic) IBOutlet UITextField *passwordTextField;

- (IBAction)actionSave:(id)sender;

@end

