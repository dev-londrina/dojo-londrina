<?php
class Collatz
{
    public function results($numero_atual)
    {
        $results[] = $numero_atual;
        while ($numero_atual > 1)
        {
            if ($numero_atual % 2 == 0) {
                $numero_atual = $this->calculaPar($numero_atual);
            } else {
                $numero_atual = $this->calculaImpar($numero_atual);
            }
            
            $results[] = $numero_atual;
        }
        return $results;
    }

    public function intervalo($inicial, $final) 
    {
        $quantidadeMaior = 0;
        $maiorItem =0;

        for($i = $inicial; $i <= $final; $i++)
        {
            $total = count($this->results($i));

            if ($total > $quantidadeMaior)
            {
                $maiorItem = $i;
                $quantidadeMaior = $total;
            }
        }

        return $maiorItem;
/*
        if ($final == 3)
            return 3;

        return 2;
  */
    }

    private function calculaPar($numero){
        return ($numero / 2);
    }


    private function calculaImpar($numero){
        return ($numero*3 +1);
    }
}