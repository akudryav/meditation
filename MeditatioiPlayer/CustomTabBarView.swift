//
//  TabBarView.swift
//  MeditatioiPlayer
//
//  Created by Evgeniy Goncharov on 18.04.2021.
//

import SwiftUI

struct CustomTabBarView: View {
    
    
    @State var selectedTab = "Yeni Mesajlar"
    @Binding var pages: [TabBarPage]
    init(pages: Binding<[TabBarPage]>) {
        UITabBar.appearance().isHidden = true
        self._pages = pages
    }
    var body: some View {
        
        ZStack(alignment: .init(horizontal: .center, vertical: .lastTextBaseline)) {
            TabView(selection: $selectedTab) {
                ForEach(pages) { item in
                    AnyView(_fromValue: item.page)
                        .tabItem{
                            EmptyView()
                        }.tag(item.tag)
                }
            }

            HStack {
                ForEach(pages) { item in
                    Button(action: {
                        self.selectedTab = item.tag
                    }) {

                        VStack(alignment: .center, spacing: 0) {
                            HStack{
                                Text("")
                            }
                            Image(item.icon)
                                .foregroundColor(item.color)
                                .imageScale(.large)
                                .foregroundColor(self.selectedTab == item.tag ? Color.white : item.color )
                            Text(item.text)
                                .foregroundColor(Color.white)
                            //Spacer(minLength: 10)
                            HStack{
                                Text("")
                            }
                            HStack{
                                Text("")
                            }
                            Spacer()
                        }
                        
                    }
                    .frame(maxWidth: .infinity)
                    .frame(width: .infinity, height: 130, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                    
                }
            }
            .font(.custom("SF UI Display", fixedSize: 10))
            //.padding(.horizontal)
            .background(LinearGradient(gradient: Gradient(colors: [(Color(UIColor(red: 0.41, green: 0.40, blue: 0.90, alpha: 1.00))), Color(UIColor(red: 0.29, green: 0.33, blue: 0.69, alpha: 1.00))]), startPoint: .top, endPoint: .bottom))
            .cornerRadius(17)
            Spacer()
            
        }
        
        
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabBarView(pages: .constant ([
            TabBarPage(page: "", icon: "home", text:"Главная", tag: "0", color: .white),
                 TabBarPage(page: "", icon: "chakra", text:"Аффирмация", tag: "1", color: .white),
                 TabBarPage(page: MeditationList(), icon: "lotus_fill", text:"Медитация", tag: "2", color: .white),
                 TabBarPage(page: "", icon: "moon", text:"Сон", tag: "3", color: .white),
                 TabBarPage(page: "", icon: "lk", text:"Кабинет", tag: "4", color: .white)
        ]))
    }
}

struct TabBarPage: Identifiable {
    var id = UUID()
    var page: Any
    var icon: String
    var text: String
    var tag: String
    var color: Color

}

