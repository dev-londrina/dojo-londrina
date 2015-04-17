require('Sudoku')
luaunit = require('luaunit')

TestSudoku = {}

function TestSudoku:setUp()
	sudoku = Sudoku.new()
end

function TestSudoku:testQuadradoVazioValido()
	assert(sudoku:isValid({{0, 0, 0},{0, 0, 0},{0, 0, 0}}))
end

function TestSudoku:testQuadradoIncompletoInvalido()
	assert(not sudoku:isValid({{},{}}))
end

function TestSudoku:testQuadradoCompletoValido()
	assert(sudoku:isValid({{1,2,3} , {4,5,6} , {7,8,9}}))
end

function TestSudoku:testQuadradoCompletoInvalido()
	assert(not sudoku:isValid({{1,2,3,4} , {4,5,6} , {7,8,9}}))
end

function TestSudoku:testQuadradoCompletoRepetido()
	assert(not sudoku:isValid({{1,2,4} , {4,5,6} , {7,8,9}}))
end

function TestSudoku:testNumerosValidos()
	assert(not sudoku:isValid({{1,2,3} , {4,5,6} , {7,8,10}}))
end

function TestSudoku:testLinhaValida()
	assert(sudoku:isValidRow({1,2,3,4,5,6,7,8,9}))
end

function TestSudoku:testLinhaMenorInvalida()
	assert(not sudoku:isValidRow({1,2,3,4,5,6,7,8}))
end

function TestSudoku:testLinhaNumeroRepetido()
	assert(not sudoku:isValidRow({1,2,3,3,4,5,6,7,8}))
end

function TestSudoku:testLinhaNumerosInvalidos()
	assert(not sudoku:isValidRow({1,2,3,10,4,5,6,7,8}))
end

function TestSudoku:test9x9Valido()
	assert(sudoku:isValid9x9({
		{1,2,3,4,5,6,7,8,9},
		{0,0,0,0,0,0,0,0,0},
		{0,0,0,0,0,0,0,0,0},
		{0,0,0,0,0,0,0,0,0},
		{0,0,0,0,0,0,0,0,0},
		{0,0,0,0,0,0,0,0,0},
		{0,0,0,0,0,0,0,0,0},
		{0,0,0,0,0,0,0,0,0},
		{0,0,0,0,0,0,0,0,0}}))
end

luaunit:run()