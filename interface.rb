class Interface
  def init_user
    puts 'Введите имя'
    gets.chomp
  end

  def notify(message)
    puts '=' * 15
    puts message
    puts '=' * 15
  end

  def round_dialog
    puts 'Выберите действие:'
    puts '1. Пропустить ход'
    puts '2. Взять карту'
    puts '3. Открыть карты'
    gets.to_i
  end

  def __str__
    str = ''
    @cards.each do |card|
      str += " #{card.suit}#{card.value} "
    end
    str += " Текущее кол-во очков - #{@score}"
  end

  alias show __str__

  def __str__
    str = "Игрок #{name}: #{@hand.show}"
  end

  alias show_stat __str__

  def show_cash(name, cash)
    puts "На счету игрока #{name}: #{cash}"
  end

  def show_hand_masked(name, hand_size)
    puts "Игрок #{name} имеет #{hand_size} карты"
  end

  def again?
    puts 'Сыграть еще раз?'
    puts 'Введите 1, если хотите сыграть еще'
    gets.to_i === 1
  end

  def end_session
    puts 'Игра окончена'
    puts 'Спасибо за игру'
  end
end
