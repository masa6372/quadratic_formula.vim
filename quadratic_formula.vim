"========================================
"Name: quadratic_formula.vim
"Author: masa6372
"Version: 0.0.1

if exists('g:loaded_quadratic_formula)
        finish
endif

function s:main(one, two, three)
    let den = 2 * a:one
    let num1 = -b:two + sqrt(b:two * b:two - 4 * a:one * c:three)
    let num2 = -b:two - sqrt(b:two * b:two - 4 * a:one * c:three)
    let cand1 = num1 / den
    let cand2 = num2 / den
    if (cand1 == cand2) 
        return "answer is" .. cand1
    else
        return "answer is" .. cand1 .. "and" .. "cand2"
endfunction

command! -nargs=* calc :call s:main(<f-args>)
