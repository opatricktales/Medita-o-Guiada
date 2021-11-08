import processing.sound.*;
SoundFile file;

int y = 255; //Cor Tunel
float tamanho, velocidade = -3, tempo = 0, profundidade = 0;
boolean respire = false;



void setup ()
{
  size (600, 400, P3D);
  smooth ();

  tamanho = height / 2;

  telaInicial ();
  {
    //Tela de carregamento, explica como vai funcionar a meditação
  }

  file = new SoundFile(this, "sample.wav");
}

void draw()
{
  tempo = tempo + 1;

  if (tempo >= 200)
  {
    frameRate (1);

    cenario ();
    {
      //Varios quadrados um menor que o outro para dar uma sensação de perspectiva
    }

    bolinha ();
    {
      //Uma esfera laranja que cresce e diminui de tamanho
    }
    
  }
}

void mousePressed ()
{
  loop (); // Parar a bolinha
  file.loop(); //Toca a música 
}

void keyPressed ()
{
  noLoop(); // Soltar a bolinhha
}

//Não consegui resolver esse erro que aparece, mas funciona normal
