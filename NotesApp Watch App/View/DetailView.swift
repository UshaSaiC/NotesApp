//
//  DetailView.swift
//  NotesApp Watch App
//
//  Created by Usha Sai Chintha on 21/09/22.
//

import SwiftUI

struct DetailView: View {
    
    let note: Note
    let count: Int
    let index: Int
    
    
    var body: some View {
        VStack(alignment: .center, spacing: 3){
            HStack {
                Capsule()
                    .frame(height: 1)
                
                Image(systemName: "note.text")
                
                Capsule()
                    .frame(height: 1)
            }
            .foregroundColor(.accentColor)
            
            Spacer()
            ScrollView(.vertical) {
                Text(note.text)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
            }
            Spacer()
            
            HStack(alignment: .center) {
                Image(systemName: "gear")
                    .imageScale(.large)
                
                Spacer()
                
                Text("\(count) / \(index + 1)")
                
                Spacer()
                
                Image(systemName: "info.circle")
                    .imageScale(.large)
            }
            .foregroundColor(.secondary)
        }
        .padding(3)
    }
}

struct DetailView_Previews: PreviewProvider {
    
    static var sampleData: Note = Note(id: UUID(), text: "usha is the only one")
    
    static var previews: some View {
        DetailView(note: sampleData, count: 3, index: 1)
    }
}
