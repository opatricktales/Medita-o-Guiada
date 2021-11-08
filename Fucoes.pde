void telaInicial ()
{
  background (255);

  stroke(10);
  fill (255, 255, 0);
  rectMode (CENTER);
  rect (width / 2, height / 8, 400, 60);

  textSize(30);
  fill (0); // Texto em preto
  text("MEDITAÇÃO GUIADA", width / 4, height / 8 + 10);

  stroke(10);
  fill (255, 255, 0);
  rectMode (CENTER);
  rect (width / 2, height / 2 - 40, 300, 60);

  textSize(25);
  fill (0); // Texto em preto
  text("Aumentando: Inspire", width / 3 - 25, height / 2 - 30);

  stroke(10);
  fill (255, 255, 0);
  rectMode (CENTER);
  rect (width / 2, 260, 300, 60);

  textSize(25);
  fill (0); // Texto em preto
  text("Diminuindo: Expire", width / 3 - 20, 270);

  stroke (10);
  fill (255, 255, 0);
  rect (300, 360, width - (1.5), 30);

  textSize(15);
  fill (0); // Texto em preto
  text("@2021 PATRICK inc.", 225, 365);
}

void cenario ()
{
  for (int x = width; x >= 100; x = x - 10)
  {
    stroke (0);
    strokeWeight (2);
    rectMode (CENTER);

    y = y - 5;
    y = constrain (y, 0, 255);
    fill (0, 0, y);
    rect (width / 2, height / 2, x, x - 50); // Faz varios retanglos um dentro do outro

    if (y == 0)
    {
      y = 255;
    }

    stroke (0);
    strokeWeight (2);
    line (72, 0, 250, 177);
    line (72, 400, 250, 226);
    line (522, 0, 350, 177);
    line (522, 400, 350, 226);
  }
}

void bolinha ()
{
  noStroke ();
  fill (254, 161, 25);
  spotLight (254, 161, 25, width / 2, height / 2, 400, 0, 0, -1, PI / 4, 10);
  translate (width / 2, height / 2, profundidade);
  sphere (tamanho);
  tamanho = tamanho + velocidade;

  if ((tamanho <= 4) && (velocidade == - 3))
  {
    velocidade = + 3;
  } else if ((tamanho >= 167) && (velocidade == + 3))
  {
    velocidade = - 3;
  }

  tamanho = constrain(tamanho, 4, 167);
}
