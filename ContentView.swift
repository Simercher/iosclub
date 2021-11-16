//
//  ContentView.swift
//  helloWorld
//
//  Created by RTC29 on 2021/11/16.
//

import SwiftUI
struct DetailView: View{
    var text: String
    var body: some View{
        Text(text)
            .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
    }
}
struct test: View {
    var image: String
    var name: String
    var phone: String
    //Text(text)
    var body: some View {
        HStack{
            Image(systemName: image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)
                .clipped()
                .cornerRadius(50)
            VStack(alignment: .leading){
                Text(name)
                    .font(.system(size: 21, weight: .medium))
                Text(phone)
            }
        }
    }
}

struct ContentView: View {
    let names = ["tortoise", "hare", "ant", "ladybug", "person"]
    let pictures = ["tortoise.fill", "hare.fill", "ant.fill", "ladybug.fill", "person.fill"]
    let phones = ["0912-345-678", "0298-765-432", "0410-101-010", "0730-502-733", "0510-203-040"]
    var body: some View {
        /*NavigationView{
         /*VStack {
         Text("Hello, world!")
         .padding()
         
         }*/
         /*Button(action:{
         
         }){
         
         }*/
         VStack {
         NavigationLink(
         destination: DetailView(text: "還敢睡覺啊！！"),
         label: {
         VStack{
         Image(systemName: "clock")
         .resizable()
         .scaledToFit()
         .frame(width: 200, height: 200)
         Text("I wanna sleep")
         .font(.largeTitle)
         }
         })
         }
         /*.navigationTitle("Matser View")
         .navigationBarTitleDisplayMode(.inline)*/
         .toolbar(content: {
         ToolbarItem(placement:.principal){
         Text("Maseter View")
         .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
         .foregroundColor(.red)
         
         }
         ToolbarItem(placement:.status){
         Image(systemName: "paperplane.fill")
         .foregroundColor(.gray)
         
         }
         })
         }*/
        NavigationView{
            List(names.indices){index in
                
                NavigationLink(
                    destination: DetailView(text: "哈哈哈哈哈哈哈"),
                    label: {
                        test(image: pictures[index], name: names[index], phone: phones[index])
                    })
                /*VStack {
                 ForEach(0..<5){index in
                 HStack{
                 
                 Image(systemName: pictures[index])
                 .resizable()
                 .aspectRatio(contentMode: .fit)
                 .frame(width: 50, height: 50)
                 .clipped()
                 .cornerRadius(50)
                 
                 
                 VStack(alignment: .leading){
                 Text(names[index])
                 .font(.system(size: 21, weight: .medium))
                 Text(phones[index])
                 }
                 }
                 }
                 }*/
                
            }
            .navigationTitle("Contacts")
        }
        //Text("Hello")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
