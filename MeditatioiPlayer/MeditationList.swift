//
//  ListContentView.swift
//  MeditatioiPlayer
//
//  Created by Evgeniy Goncharov on 17.04.2021.
//

import SwiftUI


struct MeditationList: View {
    init() {
        // this is not the same as manipulating the proxy directly
        let appearance = UINavigationBarAppearance()
        
        // this overrides everything you have set up earlier.
        appearance.configureWithTransparentBackground()
        // this only applies to big titles
        appearance.largeTitleTextAttributes = [
            //.font : UIFont.systemFont(ofSize: 30),
            NSAttributedString.Key.foregroundColor : UIColor(red: 0.306, green: 0.263, blue: 0.788, alpha: 1)
        ]
        // this only applies to small titles
        appearance.titleTextAttributes = [
            //.font : UIFont.systemFont(ofSize: 20),
            NSAttributedString.Key.foregroundColor : UIColor(red: 0.306, green: 0.263, blue: 0.788, alpha: 1)
        ]
        
        // In the following two lines you make sure that you apply the style for good
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
        //UINavigationBar.appearance().standardAppearance = appearance

        // This property is not present on the UINavigationBarAppearance
        // object for some reason and you have to leave it til the end
        UINavigationBar.appearance().tintColor = UIColor(red: 0.306, green: 0.263, blue: 0.788, alpha: 1)

        UITabBarItem.appearance().setTitleTextAttributes(
            [NSAttributedString.Key.foregroundColor: UIColor.init(white: 1, alpha: 0.5),
             NSAttributedString.Key.font: UIFont.systemFont(ofSize: 10)], for: .normal)
        
        UITabBarItem.appearance().setTitleTextAttributes(
            [NSAttributedString.Key.foregroundColor: UIColor.white,
             NSAttributedString.Key.font: UIFont.systemFont(ofSize: 12)], for: .selected)
        
            UITabBar.appearance().barTintColor = UIColor(red: 0.306, green: 0.263, blue: 0.788, alpha: 1)
        
    }
    @State var index = 0
    @State public var selection = false
    
    let layout = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        NavigationView {
            ScrollView{
                VStack {
                    HStack {
                        Text("Спокойствие")
                            .font(.title2)
                            .foregroundColor(Color(UIColor(red: 0.306, green: 0.263, blue: 0.788, alpha: 1)))
                            .fontWeight(.bold)
                        Spacer(minLength: 0)
                    } .padding(.horizontal)
                    VStack {
                        LazyVGrid(columns: layout, spacing: 20, content: {
                            NavigationLink(destination: SwiftUIPlayer()
                                            .navigationBarItems( leading:
                                                                    HStack {
                                                                    }, trailing: HStack {
                                                                        Button {
                                                                            print("Tap like")
                                                                        } label: {
                                                                            Label("", image:"heart")
                                                                        }
                                                                        Button {
                                                                            print("Tap download")
                                                                        } label: {
                                                                            Label("", image:"download")
                                                                        }
                                                                    }
                                            ),
                                           isActive: self.$selection) {
                                VStack(alignment: .leading)  {
                                    Image("Frame 6856")
                                        .background(LinearGradient(gradient: Gradient(colors: [(Color(UIColor(red: 0.38, green: 0.38, blue: 0.74, alpha: 1.00))), (Color(UIColor(red: 0.25, green: 0.29, blue: 0.75, alpha: 1.00)))]), startPoint: .leading, endPoint: .trailing))
                                        .cornerRadius(16)
                                    
                                    Text("Медитация на успокоение")
                                        .font(.custom("SF UI Display", fixedSize: 16))
                                        .frame(alignment: .center)
                                        .foregroundColor(.black)
                                    Spacer(minLength: 0)
                                    Text("Часть 1")
                                        .font(.custom("SF Pro Text", fixedSize: 13))
                                        .foregroundColor(Color(red: 0.451, green: 0.458, blue: 0.897))
                                    
                                }.frame(width: 164, height: 188, alignment: .center)
                            }
                            
                            
                            
                            NavigationLink(destination: SwiftUIPlayer()
                                            .navigationBarItems( leading:
                                                                    HStack {
                                                                    }, trailing: HStack {
                                                                        Button {
                                                                            print("Tap like")
                                                                        } label: {
                                                                            Label("", image:"heart")
                                                                        }
                                                                        Button {
                                                                            print("Tap download")
                                                                        } label: {
                                                                            Label("", image:"download")
                                                                        }
                                                                    }
                                            ),
                                           isActive: self.$selection) {
                                VStack(alignment: .leading)  {
                                    VStack(alignment: .leading)  {
                                        Image("Frame 6857")
                                            .background(LinearGradient(gradient: Gradient(colors: [(Color(UIColor(red: 0.38, green: 0.38, blue: 0.74, alpha: 1.00))), (Color(UIColor(red: 0.25, green: 0.29, blue: 0.75, alpha: 1.00)))]), startPoint: .leading, endPoint: .trailing))
                                            .cornerRadius(16)
                                        Text("Медитация на успокоение")
                                            .font(.custom("SF UI Display", fixedSize: 16))
                                            .frame(alignment: .center)
                                            .foregroundColor(.black)
                                        Spacer(minLength: 0)
                                        Text("Часть 2")
                                            .font(.custom("SF Pro Text", fixedSize: 13))
                                            .foregroundColor(Color(red: 0.451, green: 0.458, blue: 0.897))
                                        
                                    }.frame(width: 164, height: 188, alignment: .center)
                                }
                            }
                        }
                        ).padding(.horizontal)
                        Spacer(minLength: 20)
                    }
                    
                    HStack {
                        Text("Отношения")
                            .font(.title2)
                            .foregroundColor(Color(UIColor(red: 0.306, green: 0.263, blue: 0.788, alpha: 1)))
                            .fontWeight(.bold)
                        Spacer(minLength: 0)
                    } .padding(.horizontal)
                    
                    LazyVGrid(columns: layout, spacing: 20, content: {
                        VStack(alignment: .leading)  {
                            VStack(alignment: .leading)  {
                                Image("Frame 6865")
                                    .background(LinearGradient(gradient: Gradient(colors: [(Color(UIColor(red: 0.55, green: 0.09, blue: 0.42, alpha: 1.00))), Color(UIColor(red: 0.87, green: 0.24, blue: 0.50, alpha: 1.00))]), startPoint: .leading, endPoint: .trailing))
                                    .cornerRadius(16)
                                VStack{
                                    Text("Привлечение любимого человека")
                                        .font(.custom("SF UI Display", fixedSize: 17))
                                        .frame(alignment: .center)
                                    Spacer(minLength: 0)
                                    
                                }
                            }.frame(width: 164, height: 188, alignment: .center)
                        }
                        
                        VStack(alignment: .leading)  {
                            VStack(alignment: .leading)  {
                                Image("Frame 6831")
                                    .background(LinearGradient(gradient: Gradient(colors: [(Color(UIColor(red: 0.55, green: 0.09, blue: 0.42, alpha: 1.00))), Color(UIColor(red: 0.87, green: 0.24, blue: 0.50, alpha: 1.00))]), startPoint: .leading, endPoint: .trailing))
                                    .cornerRadius(16)
                                Text("Избавиться от одиночества")
                                    .font(.custom("SF UI Display", fixedSize: 17))
                                    .frame(alignment: .center)
                                Spacer(minLength: 0)
                                
                                
                            }.frame(width: 164, height: 188, alignment: .center)
                        }
                    }
                    ).padding(.horizontal)
                    
                    
                    HStack {
                        Text("На каждый день")
                            .font(.title2)
                            .foregroundColor(Color(UIColor(red: 0.306, green: 0.263, blue: 0.788, alpha: 1)))
                            .fontWeight(.bold)
                        Spacer(minLength: 0)
                    } .padding(.horizontal)
                    
                    LazyVGrid(columns: layout, spacing: 20, content: {
                        VStack(alignment: .leading)  {
                            VStack(alignment: .leading)  {
                                Image("Frame 6844")
                                    .background(LinearGradient(gradient: Gradient(colors: [(Color(UIColor(red: 0.81, green: 0.39, blue: 0.21, alpha: 1.00))), Color(UIColor(red: 0.84, green: 0.59, blue: 0.22, alpha: 1.00))]), startPoint: .leading, endPoint: .trailing))
                                    .cornerRadius(16)
                                Text("Настраивайся на позитивное")
                                    .font(.custom("SF UI Display", fixedSize: 17))
                                    .frame(alignment: .center)
                                Spacer(minLength: 0)
                                
                            }.frame(width: 164, height: 188, alignment: .center)
                        }
                        
                        VStack(alignment: .leading)  {
                            VStack(alignment: .leading)  {
                                Image("Frame 6845")
                                    .background(LinearGradient(gradient: Gradient(colors: [(Color(UIColor(red: 0.81, green: 0.39, blue: 0.21, alpha: 1.00))), Color(UIColor(red: 0.84, green: 0.59, blue: 0.22, alpha: 1.00))]), startPoint: .leading, endPoint: .trailing))
                                    .cornerRadius(16)
                                Text("Медитация благодарности")
                                    .font(.custom("SF UI Display", fixedSize: 17))
                                    .frame(alignment: .center)
                                Spacer(minLength: 0)
                                
                            }.frame(width: 164, height: 188, alignment: .center)
                        }
                    }
                    ).padding(.horizontal)
                    
                    
                    HStack {
                        Text("Осознаность")
                            .font(.title2)
                            .foregroundColor(Color(UIColor(red: 0.306, green: 0.263, blue: 0.788, alpha: 1)))
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        Spacer(minLength: 0)
                    } .padding(.horizontal)
                    
                    LazyVGrid(columns: layout, spacing: 20, content: {
                        VStack(alignment: .leading)  {
                            VStack(alignment: .leading)  {
                                Image("Frame 6828")
                                    .background(LinearGradient(gradient: Gradient(colors: [(Color(UIColor(red: 0.05, green: 0.47, blue: 0.19, alpha: 1.00))), Color(UIColor(red: 0.06, green: 0.22, blue: 0.11, alpha: 1.00))]), startPoint: .leading, endPoint: .trailing))
                                    .cornerRadius(16)
                                Text("Активная осознанность")
                                    .font(.custom("SF UI Display", fixedSize: 17))
                                    .frame(alignment: .center)
                                Spacer(minLength: 0)
                                
                            }.frame(width: 164, height: 188, alignment: .center)
                        }
                        
                        
                        VStack(alignment: .leading)  {
                            VStack(alignment: .leading)  {
                                Image("Frame 6826")
                                    .background(LinearGradient(gradient: Gradient(colors: [(Color(UIColor(red: 0.05, green: 0.47, blue: 0.19, alpha: 1.00))), Color(UIColor(red: 0.06, green: 0.22, blue: 0.11, alpha: 1.00))]), startPoint: .leading, endPoint: .trailing))
                                    
                                    .cornerRadius(16)
                                Text("Осознанность в моменте")
                                    .font(.custom("SF UI Display", fixedSize: 17))
                                    .frame(alignment: .center)
                                Spacer(minLength: 0)
                                
                            }.frame(width: 164, height: 188, alignment: .center)
                        }
                    }
                    )
                    
                }
            }
            //.padding(.vertical)
            .navigationTitle("Медитации")
            .animation(.default)
            
        }
        
    }
}


struct ListContentView_Previews: PreviewProvider {
    static var previews: some View {
        MeditationList()
    }
}
