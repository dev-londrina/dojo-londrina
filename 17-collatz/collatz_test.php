<?php
class CollatzTest extends PHPUnit_Framework_TestCase
{
    public function testeUm()
    {
        $collatz = new Collatz();
        $this->assertEquals($collatz->results(1), [1]);
    }

    public function testeDois()
    {
        $collatz = new Collatz();
        $this->assertEquals($collatz->results(2), [2,1]);  
    }

    public function testeQuatro()
    {
        $collatz = new Collatz();
        $this->assertEquals($collatz->results(4), [4,2,1]);  
    }

    public function testeTres()
    {
        $collatz = new Collatz();
        $this->assertEquals($collatz->results(3), [3,10,5,16,8,4,2,1]);  
    }

    public function testeCinco()
    {
        $collatz = new Collatz();
        $this->assertEquals($collatz->results(5), [5,16,8,4,2,1]);  
    }

    public function testeIntervaloUmDois() 
    {
        $collatz = new Collatz();
        $this->assertEquals($collatz->intervalo(1,2), 2);
    }

    public function testeIntervaloUmTres() 
    {
        $collatz = new Collatz();
        $this->assertEquals($collatz->intervalo(1,3), 3);
    }

    public function testeIntervaloUmCinco() 
    {
        $collatz = new Collatz();
        $this->assertEquals($collatz->intervalo(1,5), 3);
    }


    public function testeIntervaloUmMilhao() 
    {
        $collatz = new Collatz();
        $this->assertEquals($collatz->intervalo(1,1000000), 837799);
    }
}