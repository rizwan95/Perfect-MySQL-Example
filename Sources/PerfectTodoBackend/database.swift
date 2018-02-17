import PerfectHTTP
import PerfectHTTPServer
import PerfectMySQL
import Foundation

public class DB {

    // You'll need to update these values based on how you've set up MySQL.
    let host = "127.0.0.1"
    let user = ""
    let password = ""
    let database = ""

    func databaseConnect(host: String, user: String, password: String, db: String) -> MySQL {

        let mysql = MySQL() // Create an instance of MySQL to work with

        let connected = mysql.connect(host: host, user: user, password: password, db: db)

        guard connected else {
            // verify that we have connected successfully
            print(mysql.errorMessage())
            return mysql
        }

        return mysql
    }

    public func insertTask(title: String){

        // Connect to our database
        var db = databaseConnect(host: host, user: user, password: password, db: database)


         defer {
            db.close() //This defer block makes sure we terminate the connection once finished, regardless of the result
        }

        // Create the statement we wish to execute
        let statement = MySQLStmt(db)
        let insert = "" // Your insert query
        _ = statement.prepare(statement: insert)

        // Run the query
        let querySuccess = statement.execute()

        // Check that our query was successfuly, otherwise return out
        guard querySuccess else {
            print(db.errorMessage())
            return
        }

        print("Insert successful!");
    }




  public func fetchTask()->[String]{

        var stringsArray = [String]()
        // Connect to our database
        var db = databaseConnect(host: host, user: user, password: password, db: database)

        defer {
            db.close() //This defer block makes sure we terminate the connection once finished, regardless of the result
        }

        // Create the statement we wish to execute
        let statement = MySQLStmt(db)
        let fetch = "" //Your select query 
        _ = statement.prepare(statement: fetch)

        // Run the query
        let _ = statement.execute()

        // Check that our query was successfuly, otherwise return out





        let theResults = statement.results()

        _ = theResults.forEachRow {
              e in

         for i in 0..<e.count {
            let theFieldName = statement.fieldInfo(index: i)!.name
            print("\(theFieldName): \(e[i]!)")

            stringsArray.append(e[i] as! String)
         }


    }



        return stringsArray
    }



}
  

