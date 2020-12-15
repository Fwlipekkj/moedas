
puts "digite um valor à ser cobrado" # Aqui eu faço o valor que será cobrado

def demand()
    amount_charged = gets.to_f

    remaining_amount = amount_charged

    coins = [1.00, 0.50, 0.25, 0.10, 0.5]

    while amount_charged >= coins[0] do
    remaining_amount - coins[0]
    end
    puts remaining_amount
end

puts demand()
