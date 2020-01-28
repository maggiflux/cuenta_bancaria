#################################
#DESAFIO TERMINADO
#################################

class BankAccount
    attr_accessor :user_name

    def initialize(user_name, account_number, vip)
        @user_name = user_name
        if account_number.to_i.digits.count != 8
            raise RangeError.new('The account number must have 8 digits long')
        end
        @account_number = account_number
        @vip = vip
    end

    def account_number
        "#{@vip}-#{@account_number}"
    end

end