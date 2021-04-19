//
//  SwiftUIContentView.swift
//  MeditatioiPlayer
//
//  Created by Evgeniy Goncharov on 17.04.2021.
//

import SwiftUI




struct SwiftUIContentView: View {
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
    
    
    @State var selectedView = 2

    var body: some View {
        VStack{
//            TabView(selection: $selectedView) {
//                Text("Demo")
//
//                    .tabItem {VStack {
//                        selectedView == 0 ? Image("home_fill") : Image("home")
//                        Text("Главная")
//
//                    }}.tag(0)
//                Text("Demo")
//                    .tabItem {VStack {
//                        selectedView == 1 ? Image("chakra_fill") : Image("chakra")
//                        Text("Аффирмация")
//
//                    }}.tag(1)
//                MeditationList()
//                    .tabItem {VStack {
//                        selectedView == 2 ? Image("lotus_fill") : Image("lotus")
//                        Text("Медитация")
//
//                    } }.tag(2)
//                Text("Demo")
//                    .tabItem {VStack {
//                        selectedView == 3 ? Image("moon_fill") : Image("moon")
//                        Text("Сон")
//
//                    }}.tag(3)
//                Text("Demo")
//                    .tabItem {VStack {
//                        selectedView == 4 ? Image("lk_fill") : Image("lk")
//                        Text("Кабинет")
//
//                    }}.tag(4)
//            }
            CustomTabBarView(pages: .constant ([
                TabBarPage(page: "", icon: "home", text:"Главная", tag: "0", color: .white),
                     TabBarPage(page: "", icon: "chakra", text:"Аффирмация", tag: "1", color: .white),
                     TabBarPage(page: MeditationList(), icon: "lotus_fill", text:"Медитация", tag: "2", color: .white),
                     TabBarPage(page: "", icon: "moon", text:"Сон", tag: "3", color: .white),
                     TabBarPage(page: "", icon: "lk", text:"Кабинет", tag: "4", color: .white)
            ]))
        }
    }
}




struct SwiftUIContentView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIContentView()
    }
}
