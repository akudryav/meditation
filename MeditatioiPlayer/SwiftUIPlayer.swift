//
//  ContentView.swift
//  MeditatioiPlayer
//
//  Created by Evgeniy Goncharov on 15.04.2021.
//

import SwiftUI


struct SwiftUIPlayer: View {
    
    @State var selectedView = 2
    @State private var time = 10.0
    
    var curretTime: String!
    
    @State private var isEditing = false
    
    var body: some View {
        VStack {
            VStack(alignment: .center) {
                HStack {
                    Image("logo")
                }
                HStack  {
                    Text("Медитация на успокоение")
                        .font(.custom("SF UI Display", fixedSize: 34))
                        .foregroundColor(Color(red: 0.451, green: 0.458, blue: 0.897))
                        .multilineTextAlignment(.center)
                }
                .padding()
                HStack  {
                    Text("ЧАСТЬ 1")
                        .bold()
                        .font(.custom("SF UI Display", fixedSize: 15))
                        .foregroundColor(.gray)
                }
                .padding()
                HStack  {
                    Button(action: {
                     print("Tap to Pause")
                    }, label: {
                        Image("pause")
                    })
                }
            }
            
            VStack(spacing: 0){
                
                HStack {
                    Text(String(format: "%.2f", time).replacingOccurrences(of: ".", with: ":"))
                    Spacer()
                    Text("45:00")
                    
                }
                .font(.custom("SF Pro Display", fixedSize: 15))
                .foregroundColor(Color(red: 0.451, green: 0.458, blue: 0.897))
                HStack {
                    Slider(value: $time, in: 0...45, step: 0.1, onEditingChanged: { editing in
                        isEditing = editing
                    })
                    
                    .accentColor(Color(red: 0.451, green: 0.458, blue: 0.897))
                }
                
            }.padding()
        }
        
    }
    
    
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIPlayer()
    }
}
