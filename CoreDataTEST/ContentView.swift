//
//  ContentView.swift
//  CoreDataTEST
//
//  Created by Александр on 09.12.2022.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @Environment(\.managedObjectContext) var moc
    
    
    @FetchRequest(sortDescriptors: []) var students: FetchedResults<Student>
    
    
    var body: some View {
        VStack{
            List(students) { student in
                Text(student.name ?? "name")
            }
            Button("add") {
                let first = ["Franck","golll","gins","gol"]
                let last = ["good","rom","fas","pod"]
                
                let randFirst = first.randomElement()!
                let randLast = first.randomElement()!
                
                let student = Student(context: moc)
                student.id = UUID()
                student.name = "\(randFirst) \(randLast)"
                
            }
            
        }
    }
}
    
    
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
