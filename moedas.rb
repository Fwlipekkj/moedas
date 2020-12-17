
puts "digite um valor à ser cobrado" # Aqui eu faço o valor que será cobrado

def demand()
    amount_charged = gets.to_f.round(2)

    change_of_purchase = nil.to_f.round(2)

    remaining_amount = amount_charged.round(2)

    coins = [1.00, 0.50, 0.25, 0.10, 0.05]


    while remaining_amount >= coins[4] do
        remaining_amount -= coins[4] and change_of_purchase += coins[4]
    end

    while remaining_amount >= coins[0] do
        remaining_amount -= coins[0] and change_of_purchase += 1.00
    end

    while remaining_amount >= coins[1] do
        remaining_amount -= coins[1] and change_of_purchase += 0.50
    end

    while remaining_amount >= coins[2] do
        remaining_amount -= coins[2] and change_of_purchase += 0.25
    end

    while remaining_amount >= coins[3] do
        remaining_amount -= coins[3] and change_of_purchase += 0.10
    end


    puts change_of_purchase.round(2)

    if remaining_amount == 0.00 or remaining_amount < 0.05
        puts "Não sobrou nada para pagar! Restante:  " + remaining_amount.round(2).to_s + "R$"
    elsif remaining_amount < 0.00
        puts "Você pagou a mais! seu troco: " + remaining_amount.round(2).to_s + "R$"
    elsif remaining_amount > 0.00 
        puts "Você está devendo! precisa de mais " + remaining_amount.round(2).to_s + "R$ para pagar!"
    else
        puts "An error occurred"
    end

    sleep(2)

    puts "Você gastou" " #{change_of_purchase.round(2)} " "R$!"

end

puts demand()
