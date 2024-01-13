//
//  Question.swift
//  Basic_biomechanics


import SwiftUI

struct Question {
    
    let text: String
    let answers: [String]
    let correctAnswerIndex: Int
    
    static let quizData: [Question] = [
        Question(text: "Сгибание плеча происходит...", answers: ["в горизонтальной плоскости", "в сагиттальной плоскости", "во фронтальной плоскости"], correctAnswerIndex: 1),
        Question(text: "Наклон корпуса вправо происходит...", answers: ["относительно сагиттальной оси", "относительно фронтальной оси", "относительно вертикальной оси"], correctAnswerIndex: 0),
        Question(text: "В какой плоскости и относительно какой оси происходит вращение ГОП", answers: ["горизонтальная плоскость, сагиттальная ось", "фронтальная плоскость, вертикальная ось", "горизонтальная плоскость, вертикальная ось"], correctAnswerIndex: 2),
    ]
    
}
