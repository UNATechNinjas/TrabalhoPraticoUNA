class pessoa {
    #nome
    constructor(nome) {
        this.#nome = nome
    }

    set setNome(nome) {
        this.#nome = nome
    }

    get getNome() {
        return this.#nome
    }
}

class pessoaFisica extends pessoa {
    #cpf
    constructor(nome, cpf) {
        super(nome)
        this.#cpf = cpf
    }

    set setCpf(cpf) {
        this.#cpf = cpf
    }

    get getCpf() {
        return this.#cpf
    }
}

class pessoaJuridica extends pessoa {
    #cnpj
    constructor(nome, cnpj) {
        super(nome)
        this.#cnpj = cnpj
    }

    set setCnpj(cnpj) {
        this.#cnpj = cnpj
    }

    get getCnpj() {
        return this.#cnpj
    }
}

let pf = new pessoaFisica(prompt('Informe o nome:', 'NOME'), prompt('Informe o CPF:', 'CPF'))
let pj = new pessoaJuridica(prompt('Informe a empresa:', 'EMPRESA'), prompt('Informe o CNPJ:', 'CNPJ'))

document.write(`Nome: ${pf.getNome} | CPF: ${pf.getCpf} <br><br>`)
document.write(`Empresa: ${pj.getNome} | CNPJ: ${pj.getCnpj} <br><br><hr/>`)