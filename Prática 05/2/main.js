class Veiculo{
    #chassi
    #placa

    setChassi(){
        this.#chassi = prompt("Informe o número do chassi", "chassi")
    }

    get getChassi(){
        return this.#chassi
    }

    setPlaca(){
        this.#placa = prompt("Informe a placa", "placa")
    }

    get getPlaca(){
        return this.#placa
    }

    imprime(){
        return `Chassi: ${this.#chassi} Placa: ${this.#placa}`
    }
}

class Cadastro{
    #veiculos = []

    cadastrar(){
        let i = 0, opcao

        do{
            let veiculo = new Veiculo()
            veiculo.setChassi()
            veiculo.setPlaca()
            this.#veiculos[i++] = veiculo
            opcao = confirm("Deseja informar outro veículo?")
        } while(opcao == true)
    }
    
    imprimir(){
        for(let i = 0; i< this.#veiculos.length; i ++){
            document.write(`(${i}) ${this.#veiculos[i].imprime()}<br>`)
        }
    }
}

let cadastro = new Cadastro()
cadastro.cadastrar()

document.write("Veículos Cadastrados:<br>")
cadastro.imprimir()   