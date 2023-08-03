//
//  DatabaseManager.swift
//  instagram
//
//  Created by Roman Yang on 2023/8/1.
//

import FirebaseDatabase

public class DatabaseManager{
    static let shared = DatabaseManager()
    private let database = Database.database().reference()
    // MARK: - Public
    
    ///Check if username and email is available
    /// - Parameters
    ///     - email:String represent email
    ///     - username:String represent username
    public func canCreateNewUser(with email:String, username:String, completion: (Bool) -> Void){
        completion(true)
    }
    ///Insert new user data to database
    /// - Parameters
    ///     - email:String represent email
    ///     - username:String represent username
    ///     - completion:Async callback for result if db entry succeded
    public func insertNewUser(with email:String, username:String, completion: @escaping(Bool) -> Void){
        database.child(email.safeDatabaseKey()).setValue(["username":username]) { error, _ in
            if error == nil{
                // succeed
                completion(true)
                return
            }
            else{
                // fail
                completion(false)
                return
            }
        }
    }
    
}
