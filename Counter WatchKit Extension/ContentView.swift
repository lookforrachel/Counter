//
//  ContentView.swift
//  Counter WatchKit Extension
//
//  Created by Rachel Yee on 11/5/21.
//

import SwiftUI

struct ContentView: View {
    
    @AppStorage("count") private var counter = 0
    @State private var showReset = false
    
    var body: some View {
        NavigationView {
            ZStack{
                Button("\(counter)"){
                    counter += 1
                    withAnimation{
                    showReset = (counter > 0) ? true : false
                    }
                }
                .font(.largeTitle)
                .foregroundStyle(.black)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color(.yellow))
                .clipShape(Circle())
                
                if showReset {
                        VStack{
                            HStack{
                                Button("⤴", action: reset)
                                    .frame(width: 50, height: 50)
                                    .background(Capsule().fill(Color.red))
                                    .clipShape(Circle())
                                Spacer()
                            }
                        Spacer()
                        }
                        .transition(.asymmetric(insertion: .opacity, removal: .slide))
                }
            }
        }
    }
    func reset(){
        counter = 0
        withAnimation {
        showReset = false
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

