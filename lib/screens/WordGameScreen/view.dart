import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'viewmodel.dart';

class WordGameScreen extends StatelessWidget {
  static const routeName = '/word-game';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Şehri Tahmin Et',style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Consumer<WordViewModel>(
          builder: (context, viewModel, child) {
            return viewModel.isLoading
                ? CircularProgressIndicator()
                : Padding(
              padding: const EdgeInsets.all(16.0),
              child: viewModel.currentQuestionIndex < 5 && viewModel.timeRemaining > 0
                  ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Time remaining: ${viewModel.timeRemaining} seconds',
                    style: TextStyle(fontSize: 20, color: Colors.red),
                  ),
                  if (viewModel.currentCity != null)
                    Column(
                      children: [
                        Text(
                          'Hint: ${viewModel.currentCity!.hint}',
                          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 20),
                        TextField(
                          controller: viewModel.textController,
                          decoration: InputDecoration(
                            hintText: 'Enter city name',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        ),
                        if (viewModel.showResult)
                          Column(
                            children: [
                              SizedBox(height: 10),
                              Icon(
                                viewModel.isCorrect ? Icons.check_circle : Icons.cancel,
                                color: viewModel.isCorrect ? Colors.green : Colors.red,
                                size: 50,
                              ),
                              if (!viewModel.isCorrect)
                                Text(
                                  'Correct answer: ${viewModel.currentCity!.name}',
                                  style: TextStyle(fontSize: 20, color: Colors.red),
                                ),
                            ],
                          ),
                        SizedBox(height: 20),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          onPressed: () {
                            viewModel.checkAnswer();
                          },
                          child: Text('Gönder', style: TextStyle(fontSize: 18,color: Colors.white,)),
                        ),
                        SizedBox(height: 10),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          onPressed: () {
                            viewModel.skipQuestion();
                          },
                          child: Text('Pas Geç', style: TextStyle(fontSize: 18,color: Colors.white)),
                        ),
                        SizedBox(height: 10),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text('Oyundan Çık', style: TextStyle(fontSize: 18,color: Colors.white)),
                        ),
                        if (viewModel.showResult)
                          SizedBox(height: 10),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          onPressed: () {
                            viewModel.nextQuestion();
                          },
                          child: Text('Sonraki Soru', style: TextStyle(fontSize: 18,color: Colors.white)),
                        ),
                      ],
                    ),
                ],
              )
                  : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Oyun Bitti!',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Puanınız: ${viewModel.timeRemaining}',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.green),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: () {
                      viewModel.resetGame();
                    },
                    child: Text('Yeniden Oyna', style: TextStyle(fontSize: 18,color: Colors.white)),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('Oyundan Çık', style: TextStyle(fontSize: 18,color: Colors.white)),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
