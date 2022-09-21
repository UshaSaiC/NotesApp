//
//  ContentView.swift
//  NotesApp Watch App
//
//  Created by Usha Sai Chintha on 21/09/22.
//

import SwiftUI

struct ContentView: View {
    @State private var notes: [Note] = [Note]()
    @State private var text: String = ""
    
    func save(){
        dump(notes)
    }
    
    var body: some View {
        VStack {
            NavigationView {
                HStack(alignment: .center, spacing: 6){
                    TextField("Add New Note",text: $text)
                    
                    Button {
                        
                        guard text.isEmpty == false else {return} // used to ensure buttons action is executed only when the text field is not empty.. else we are going out directly
                        
                        let note = Note(id: UUID(), text: text) // creating a new note item and initialising it
                        
                        notes.append(note) // combining or collating all the notes
                        
                        text = "" // emptying the text field after button click
                        
                        save()
                        
                    } label: {
                        Image(systemName: "plus.circle")
                            .font(.system(size: 42, weight: .semibold))
                    }
                    .fixedSize()
                    .buttonStyle(BorderedButtonStyle(tint: .accentColor))
                    .buttonStyle(PlainButtonStyle())
                    .foregroundColor(.accentColor)
                }
                .navigationBarTitle("Notes")
            }
            Spacer()
            Text("\(notes.count)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
