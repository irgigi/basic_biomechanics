//
//  QuizeView.swift
//  Basic_biomechanics


import SwiftUI

struct QuizeView: View {
    
    @State private var currentQuestionIndex = 0
    @State private var userScore = 0
    @State private var showingResult = false
    
    let questions = Question.quizData
    
    var body: some View {
        
        VStack {
            if currentQuestionIndex < questions.count {
                
                ZStack {
                    Rectangle()
                        .fill(.blue)
                        .frame(width: 350, height: 100)
                        .cornerRadius(20.0)
                        .padding()
                    Text("Вопрос \(currentQuestionIndex + 1): \(questions[currentQuestionIndex].text)")
                        .padding()
                        .font(.headline)
                        .foregroundColor(.black)
                        .transition(.opacity)
                        .animation(.easeIn, value: 5)
                }
                

                ForEach(0..<questions[currentQuestionIndex].answers.count, id: \.self) { index in
                    ZStack {
                        Rectangle()
                            .fill(.regularMaterial)
                            .cornerRadius(40.0)
                            .frame(width: 350, height: 100)
                        Button(action: {
                            self.checkAnswer(index)
                        }) {
                            Text(self.questions[self.currentQuestionIndex].answers[index])
                                .foregroundColor(.gray)
                                .frame(width: 350, height: 100)
                                //.padding()
                            
                        }
                    }

                }
            } else {
                
                VStack {
                    Text("Результат викторины")
                        .font(.title)
                        .padding()
                    
                    if userScore == questions.count {
                        Text("Отличный результат! Все ответы верны!")
                            .foregroundColor(.green)
                            .font(.headline)
                            .rotationEffect(.degrees(showingResult ? 360 : 0))
                            .animation(.spring(), value: 10.0)
                            .padding()
                            .onAppear {
                                withAnimation {
                                    self.showingResult = true
                                }
                            }
                    } else {
                        
                        Text("Правильных ответов: \(userScore) из \(questions.count)")
                            .padding()
                            .foregroundColor(.red)
                            .onAppear {
                                withAnimation {
                                    self.showingResult = true
                                }
                            }
                    }

                    ZStack {
                        Rectangle()
                            .fill(.regularMaterial)
                            .cornerRadius(40.0)
                            .frame(width: 350, height: 100)
                        
                        Button("Начать заново") {
                            self.currentQuestionIndex = 0
                            self.userScore = 0
                            self.showingResult = false
                        }
                        .padding()
                    }
                    

                     
                }
        
            
            }

        }
        

    }
    
    func checkAnswer(_ selectedAnswerIndex: Int) {
        if selectedAnswerIndex == questions[currentQuestionIndex].correctAnswerIndex {
            userScore += 1
        }
        
        if currentQuestionIndex < questions.count {
            currentQuestionIndex += 1
        } else {
            withAnimation {
                self.showingResult = true
            }
        }
    }
    
}

#Preview {
    QuizeView()
}
