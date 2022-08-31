//
//  ContentView.swift
//  MyFirstProject
//
//  Created by Macbook Air on 24.07.2022.
//

import SwiftUI

struct ContentView: View {
    
   
    @State private var a = 0.0
    @State private var b = 0.0
    @State private var line1 = "________"
    @State private var line2 = "__"
    @State private var line3 = "________"
    @State private var line4 = "________"
    @State private var calc = 0
    
    
    
    var body: some View {
        
        
        VStack {
        
            Text(line1)
                .padding()
                .font(.system(size: 30))
            Text(line2)
                .padding()
                .font(.system(size: 30))
            Text(line3)
                .padding()
                .font(.system(size: 30))
            Text(line4)
                .padding()
                .font(.system(size: 30))
            
            
            
            HStack {
            
                Button(action: {
                    if line2 == "__" {
                        a = a * 10 + 1
                        line1 = String(a)
                    } else {
                        b = b * 10 + 1
                        line3 = String(b)
                    }
                }) {
                Image(systemName: "1.circle")
                .font(.system(size: 70))
                }
                
                Button(action: {
                    if line2 == "__" {
                        a = a * 10 + 2
                        line1 = String(a)
                    } else {
                        b = b * 10 + 2
                        line3 = String(b)
                    }
                }) {
                Image(systemName: "2.circle")
                .font(.system(size: 70))
                }
                
                Button(action: {
                    if line2 == "__" {
                        a = a * 10 + 3
                        line1 = String(a)
                    } else {
                        b = b * 10 + 3
                        line3 = String(b)
                    }
                }) {
                Image(systemName: "3.circle")
                .font(.system(size: 70))
                }
            
            }
            
            
            HStack {
            
                Button(action: {
                    if line2 == "__" {
                        a = a * 10 + 4
                        line1 = String(a)
                    } else {
                        b = b * 10 + 4
                        line3 = String(b)
                    }
                }) {
                Image(systemName: "4.circle")
                .font(.system(size: 70))
                }
                
                Button(action: {
                    if line2 == "__" {
                        a = a * 10 + 5
                        line1 = String(a)
                    } else {
                        b = b * 10 + 5
                        line3 = String(b)
                    }
                }) {
                Image(systemName: "5.circle")
                .font(.system(size: 70))
                }
                
                Button(action: {
                    if line2 == "__" {
                        a = a * 10 + 6
                        line1 = String(a)
                    } else {
                        b = b * 10 + 6
                        line3 = String(b)
                    }
                }) {
                Image(systemName: "6.circle")
                .font(.system(size: 70))
                }
                
            }
                HStack {
                
                    Button(action: {
                        if line2 == "__" {
                            a = a * 10 + 7
                            line1 = String(a)
                        } else {
                            b = b * 10 + 7
                            line3 = String(b)
                        }
                    }) {
                    Image(systemName: "7.circle")
                    .font(.system(size: 70))
                    }
                    
                    Button(action: {
                        if line2 == "__" {
                            a = a * 10 + 8
                            line1 = String(a)
                        } else {
                            b = b * 10 + 8
                            line3 = String(b)
                        }
                    }) {
                    Image(systemName: "8.circle")
                    .font(.system(size: 70))
                    }
                    
                    Button(action: {
                        if line2 == "__" {
                            a = a * 10 + 9
                            line1 = String(a)
                        } else {
                            b = b * 10 + 9
                            line3 = String(b)
                        }
                    
                    }) {
                    Image(systemName: "9.circle")
                    .font(.system(size: 70))
                    }
                
                }
            
            HStack {
            
                Button(action: {
                
                line2 = "+"
                }) {
                Image(systemName: "plus.circle")
                .font(.system(size: 70))
                }
                
                Button(action: {
                    if line2 == "+" {
                        line4 = String(a + b)
                    }
                    if line2 == "-" {
                        line4 = String(a - b)
                    }
                    if line2 == "x" {
                        line4 = String(a * b)
                    }
                    if line2 == "/" {
                        line4 = String(a / b)
                    }
                    
                }) {
                Image(systemName: "equal.circle")
                .font(.system(size: 70))
                }
                
                Button(action: {
                line2 = "-"
                }) {
                Image(systemName: "minus.circle")
                .font(.system(size: 70))
                }
            
            }
            
            HStack {
            
                Button(action: {
                
                line2 = "x"
                }) {
                Image(systemName: "multiply.circle")
                .font(.system(size: 70))
                }
                
                Button(action: {
                    a = 0.0
                    b = 0.0
                    line1 = "________"
                    line2 = "__"
                    line3 = "________"
                    line4 = "________"
                    calc = 0
                    
                    
                }) {
                Image(systemName: "applelogo")
                .font(.system(size: 70))
                }
                
                Button(action: {
                line2 = "/"
                }) {
                Image(systemName: "divide.circle")
                .font(.system(size: 70))
                }
            
            }
            
            
            
            Spacer()
            
            
            
           
    
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
