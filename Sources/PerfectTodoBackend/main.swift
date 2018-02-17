import PerfectLib
import PerfectHTTP
import PerfectHTTPServer
import PerfectMySQL
import Foundation

let mysql = DB()

let server = HTTPServer()
server.serverPort = 8082


var routes = Routes()


func returnJSONMessage(message: [String] , response:HTTPResponse){
    
    do {
        
        
        try response.setBody(json: ["result":message])
            .setHeader(.contentType, value:"application/json")
            .completed()
        
    }catch{
        response.setBody(string: "Error handling request")
            .completed(status: .internalServerError)
    }
    
}

func returnBoolJSONMessage(message: String , response:HTTPResponse){
    
    do {
        
        
        try response.setBody(json: ["result":message])
            .setHeader(.contentType, value:"application/json")
            .completed()
        
    }catch{
        response.setBody(string: "Error handling request")
            .completed(status: .internalServerError)
    }
    
}


routes.add(method: .post, uri:"/addToDo",handler:{
    
    request, response in
    
    guard let taskString = request.param(name: "taskStringValue")else{
        
        response.completed(status: .badRequest)
        return
    }
    
    mysql.insertTask(title: taskString)
    
    returnBoolJSONMessage(message:"true",response:response)
    
    
    
})


routes.add(method: .get, uri:"/fetchToDo",handler:{
    
    request, response in
    returnJSONMessage(message: mysql.fetchTask(), response:response)
    
})




server.addRoutes(routes)

do{
    try server.start()
}catch {
    print("Server cannot be started")
}

