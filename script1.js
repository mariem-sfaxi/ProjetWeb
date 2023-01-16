const quizData = [{
        question: "Which language runs in a web browser?",
        a: "Java",
        b: "C",
        c: "Python",
        d: "JavaScript",
        correct: "d",
    },
    {
        question: "What does CSS stand for?",
        a: "Central Style Sheets",
        b: "Cascading Style Sheets",
        c: "Cascading Simple Sheets",
        d: "Cars SUVs Sailboats",
        correct: "b",
    },
    {
        question: "What does HTML stand for?",
        a: "Hypertext Markup Language",
        b: "Hypertext Markdown Language",
        c: "Hyperloop Machine Language",
        d: "Helicopters Terminals Motorboats Lamborginis",
        correct: "a",
    },
    {
        question: "What year was JavaScript launched?",
        a: "1996",
        b: "1995",
        c: "1994",
        d: "none of the above",
        correct: "b",
    },
    {
        question: "What is HTML used for?",
        a: "To format web pages",
        b: "To structure content in a web page",
        c: "To create dynamic pages",
        d: "To compete with Google and Facebook",
        correct: "b",
    },
    {
        question: "What are the ARIA specifications, related to HTML, used for?",
        a: "To make content and web applications accessible",
        b: "Manage font families on the web page",
        c: "To build audible and musical web pages",
        d: "To help with the internationalization of the web",
        correct: "a",
    },
    {
        question: "Among these properties, which allows, on browsers that support it, to apply a width of 100% - 50px to the element concerned?",
        a: "width: auto - 50px;",
        b: "width: 100%-50px;",
        c: "width: calc(100%-50px);",
        d: "width: #captain.flam;",
        correct: "c",
    },
    {
        question: "How to make a div take all the width available in its containing block?",
        a: "div { width: 100%; padding: 10%;}",
        b: "div {min-width: 100%;}",
        c: "div { width: 80%; padding: 10%;}",
        d: "It's automatic, no need to specify a width.",
        correct: "d",
    },
    {
        question: "Where is it advisable to place the CSS code?",
        a: "In the <body>, it's your question",
        b: "Between the <head> tags, it's much cleaner",
        c: "In an external file usable for several pages",
        d: "In a JavaScript file",
        correct: "c",
    },
    {
        question: "In an external JavaScript file (.js), you must:",
        a: "surround the code with <script> and </script> tags.",
        b: "specify the encoding of the file with the @charset rule.",
        c: "escape (X)HTML special characters.",
        d: "none of the above",
        correct: "d",
    },
];

const quiz = document.getElementById('quiz')
const answerEls = document.querySelectorAll('.answer')
const questionEl = document.getElementById('question')
const a_text = document.getElementById('a_text')
const b_text = document.getElementById('b_text')
const c_text = document.getElementById('c_text')
const d_text = document.getElementById('d_text')
const submitBtn = document.getElementById('submit')

let currentQuiz = 0
let score = 0

loadQuiz()

function loadQuiz() {
    deselectAnswers()

    const currentQuizData = quizData[currentQuiz]

    questionEl.innerText = currentQuizData.question
    a_text.innerText = currentQuizData.a
    b_text.innerText = currentQuizData.b
    c_text.innerText = currentQuizData.c
    d_text.innerText = currentQuizData.d
}

function deselectAnswers() {
    answerEls.forEach(answerEl => answerEl.checked = false)
}

function getSelected() {
    let answer

    answerEls.forEach(answerEl => {
        if (answerEl.checked) {
            answer = answerEl.id
        }
    })

    return answer
}

submitBtn.addEventListener('click', () => {
    const answer = getSelected()

    if (answer) {
        if (answer === quizData[currentQuiz].correct) {
            score++
        }

        currentQuiz++

        if (currentQuiz < quizData.length) {
            loadQuiz()
        } else {
            quiz.innerHTML = `
                <h2>You answered ${score}/${quizData.length} questions correctly</h2>
 
                <button onclick="location.reload()">Reload</button>
            `
        }
    }
})