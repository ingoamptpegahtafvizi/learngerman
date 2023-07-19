//
//  ContentView.swift
//  menuapp
//
//  Created by Pegah Tafvizi on 18.07.23.
//

import SwiftUI

struct WordsView: View {
    
    @State  var varvieweachimagecontainwhat : [eachimagecontainwhat] = [eachimagecontainwhat]()
    var vardataservicee = Dataservice()
    
    
    var body: some View {
    
        
        List(varvieweachimagecontainwhat) {aa in
            
            HStack{
                Text(aa.wordname)
                    .bold()
                
                Spacer()
                
                Text(aa.WordPlural)
                    .bold()
                    .font(.system(size: 12))
                
                
                Spacer()
                
                Image(aa.imagename)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 50)
            }
            .listRowBackground( Color(.brown)
                 .opacity(0.1)  )
            
            
        }
        .listStyle(.plain)
        .onAppear {
            varvieweachimagecontainwhat = vardataservicee.dataservicefunc()
        }
        
    }
    
    
    
    
    
    
    
    
    
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        WordsView()
    }
}
