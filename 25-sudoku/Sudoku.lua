Sudoku = {}

function Sudoku:new()
    local objeto = {}
    setmetatable(objeto, { __index = Sudoku })
    return objeto
end

function Sudoku:is3x3(tabela)
    if #tabela ~= 3 then
        return false
    end

    for i,v in ipairs(tabela) do
        if #v ~= 3 then
            return false
        end
    end
    return true
end

function Sudoku:isValid(tabela)
    return self:is3x3(tabela) 
        and self:isValidRow(self:flatten(tabela))
end

function Sudoku:isValidRowSize(row)
    return #row == 9
end

function Sudoku:isValidRowUnique(row)
    for i, v in ipairs(row) do
        if (row[i] == row[i+1] and row[i] ~= 0) then
            return false
        end
    end
    return true
end

function Sudoku:isValidRowValidNumbers(row)
    for i, v in ipairs(row) do
        if v < 0 or v > 9 then
            return false
        end
    end
    return true
end

function Sudoku:isValidRow(row)
    return self:isValidRowSize(row)
       and self:isValidRowUnique(row)
       and self:isValidRowValidNumbers(row)
end

function Sudoku:flatten(tabela)
    row = {}
    for i, v in ipairs(tabela) do
        for i, v2 in ipairs(v) do
            table.insert(row, v2)
        end
    end
    return row
end

function Sudoku:isValid9x9(tabela)
    if #tabela ~= 9 then
        return false
    end

    for i,v in ipairs(tabela) do
        if #v ~= 9 then
            return false
        end
    end
    return true
end