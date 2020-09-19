//
//  ContentView.swift
//  bear_navigation
//
//  Created by tientran on 9/19/20.
//

import SwiftUI

struct ContentView: View {
    let bear : [Bear] = Bear.bear()
    var body: some View {
        NavigationView{
            List{
                ForEach(self.bear, id: \.id){ b  in
                    NavigationLink(destination: DetailBear(bear: b)){
                        BearRow(bear: b)
                    }
                }
            }
            .navigationBarTitle(Text("Cute Bear"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct BearRow: View {
    var bear : Bear
    var body: some View {
        HStack{
            Image(bear.image)
                .resizable()
                .frame(width: 100, height: 100)
            
            VStack(alignment:.leading){
                Text("Age: \(bear.age)")
                Text(bear.description)
                
            }
        }
    }
}
