//
//  ContentView.swift
//  bear_navigation
//
//  Created by tientran on 9/19/20.
//

import SwiftUI

struct ContentView: View {
    let bear : [Bear] = Bear.bear()
    @State var canSwim : Bool = false
    var body: some View {
        NavigationView{
            List{
                Toggle(isOn: $canSwim, label: {
                    Text("CanSwim")
                })
                ForEach(self.bear, id: \.id){ b  in
                    if !self.canSwim || b.canSwim {
                        NavigationLink(destination: DetailBear(bear: b)){
                            BearRow(bear: b)
                        }
                    }
                }
            }
            .listStyle(InsetListStyle())
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
                Text("Age: \(bear.age) - \(bear.canSwim ? "Can Swim" : "Can't Swim")")
                Text(bear.description)
                
            }
        }
    }
}
