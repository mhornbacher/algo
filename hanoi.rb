@counter = 0
def move(n, source, target, spare)
    print('.') if @counter % 1000000 == 0
    if n > 0
        @counter += 1
        move(n - 1, source, spare, target)
        target << source.pop()
        move(n - 1, spare, target, source)
    else
        return [source, target, spare]
    end
end

def tower(levels)
    start = *(1..levels)
    move(levels, start, [], [])
end

def simple_eta_genreator(levels)
    seconds = 2**levels - 1
    '%d days, %d hours, %d minutes, %d seconds' %
    # the .reverse lets us put the larger units first for readability
    [24,60,60].reverse.inject([seconds]) {|result, unitsize|
      result[0,0] = result.shift.divmod(unitsize)
      result
    }
end

moves = 25

puts("It would take you #{simple_eta_genreator(moves)} to do this. Give me some time...")
start = Time.now
res= tower(moves) #replace with height of tower
diff = Time.now - start
puts("\nMoves: #{@counter}\nResult#{res}")