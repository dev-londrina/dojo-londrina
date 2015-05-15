require('Sudoku')
lu = require('luaunit')

TestSudoku = {}

function TestSudoku:setUp()
    sudoku = Sudoku.new()
end

function TestSudoku:testQuadradoVazioValido()
    assertEquals(sudoku:isValid({{0, 0, 0},{0, 0, 0},{0, 0, 0}}), true)
end

function TestSudoku:testQuadradoIncompletoInvalido()
    assertEquals(sudoku:isValid({{},{}}), false)
end

function TestSudoku:testQuadradoCompletoValido()
    assertEquals(sudoku:isValid({{1,2,3} , {4,5,6} , {7,8,9}}), true)
end

function TestSudoku:testQuadradoCompletoInvalido()
    assertEquals(sudoku:isValid({{1,2,3,4} , {4,5,6} , {7,8,9}}), false)
end

function TestSudoku:testQuadradoCompletoRepetido()
    assertEquals(sudoku:isValid({{1,2,4} , {4,5,6} , {7,8,9}}), false)
end

function TestSudoku:testNumerosValidos()
    assertEquals(sudoku:isValid({{1,2,3} , {4,5,6} , {7,8,10}}), false)
end

function TestSudoku:testLinhaValida()
    assertEquals(sudoku:isValidRow({1,2,3,4,5,6,7,8,9}), true)
end

function TestSudoku:testLinhaMenorInvalida()
    assertEquals(sudoku:isValidRow({1,2,3,4,5,6,7,8}), false)
end

function TestSudoku:testLinhaNumeroRepetido()
    assertEquals(sudoku:isValidRow({1,2,3,3,4,5,6,7,8}), false)
end

function TestSudoku:testLinhaNumerosInvalidos()
    assertEquals(sudoku:isValidRow({1,2,3,10,4,5,6,7,8}), false)
end

function TestSudoku:test9x9Valido()
    assertEquals(
        sudoku:isValid9x9({
            {1,2,3,4,5,6,7,8,9},
            {0,0,0,0,0,0,0,0,0},
            {0,0,0,0,0,0,0,0,0},
            {0,0,0,0,0,0,0,0,0},
            {0,0,0,0,0,0,0,0,0},
            {0,0,0,0,0,0,0,0,0},
            {0,0,0,0,0,0,0,0,0},
            {0,0,0,0,0,0,0,0,0},
            {0,0,0,0,0,0,0,0,0}
        }),
        true
    )
end

lu:run()
