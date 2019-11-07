@x = rand(1..5)
@y = rand(1..5)
@z = rand(1..4)
#x ось абсцисс
#y ось ординат
#z сторона света (1-север, 2-восток, 3-юг, 4-запад)
  if @z == 1
    myside = "north"
  elsif @z == 3
    myside = "south"
  elsif @z == 4
    myside = "west"
  else
    myside = "east"
  end


  def side to_side
    if to_side == "left"
      @z = @z - 1
    if @z < 1
      @z = @z + 4
    end
    elsif to_side == "right"
      @z = @z + 1
      if @z > 4
        @z = @z - 4
      end
    else
      puts "Мои ножки устали! Пока-пока!!"
      exit
    end
  end

  def go_north step
    table_edge = @y + step
    if table_edge > 5
      table_edge = 5 - @y
      @y = @y + table_edge
      puts "Я так упаду! Я сделаю только #{table_edge} шагов!"
      puts "Мои координаты x = #{@x}, y = #{@y}, z = #{@z}"
    else
     @y = @y + step
     puts "Мои координаты x = #{@x}, y = #{@y}, z = #{@z}"
    end
  end

  def go_south step
    table_edge = @y - step
    if table_edge < 0
       table_edge = 5 - (5 - @y)
       @y = @y - table_edge
      puts "Я так упаду! Я сделаю только #{table_edge} шагов!"
      puts "Мои координаты x = #{@x}, y = #{@y}, z = #{@z}"
    else
     @y = @y - step
      puts "Мои координаты x = #{@x}, y = #{@y}, z = #{@z}"
   end
  end

  def go_west step
    table_edge = @x - step
    if table_edge < 0
       table_edge = 5 - (5 - @x)
       @x = @x - table_edge
      puts " Я так упаду! Я сделаю только #{table_edge} шагов!"
      puts "Мои координаты x = #{@x}, y = #{@y}, z = #{@z}"
    else
      @x = @x - step
       puts "Мои координаты x = #{@x}, y = #{@y}, z = #{@z}"
    end
  end

  def go_east step
    table_edge = @x + step
    if table_edge > 5
      table_edge = 5 - @x
      @x = @x + table_edge
      puts "Я так упаду! Я сделаю только #{table_edge} шагов!"
      puts "Мои координаты x = #{@x}, y = #{@y}, z = #{@z}"
    else
      @x = @x + step
      puts "Мои координаты x = #{@x}, y = #{@y}, z = #{@z}"
    end
  end
  puts "Привет! Я родился!! Меня зовут Tim!"
  puts "Вы найдете меня по координатам  x = #{@x} y = #{@y} и я смотрю на #{myside}!!"
  while true
    puts "Куда мне повернуть? (left/right/stand/exit)"
    to_side = gets.strip
    if to_side != "stand"
      side(to_side)
    end
    puts "z = #{@z}"
    puts "Сколько шагов мне сделать (от 1 до 5)?"
    step = gets.to_i
       if @z == 1
         go_north(step)
       elsif  @z == 2
        go_east(step)
       elsif @z == 3
         go_south(step)
       elsif @z == 4
         go_west(step)
       end
    end
