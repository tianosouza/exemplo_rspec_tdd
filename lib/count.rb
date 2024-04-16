class Count
    @qtd = 0

    def self.qtd
        @qtd
    end

    def self.increment
        @qtd += 1
    end
end