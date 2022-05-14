
abstract type Facebook end

mutable struct tp_facebook <: Facebook
    userName::String
    password::String
end

function post(network::tp_facebook,message::String ) #classe igual a do esqueleto network, porem chama metodos implementados pela ramificacao
    if login(network)
        result = sendData(network, message)
        logout(network)
        return result
    end
end

function login(network::tp_facebook)
    if network.userName == "FacebookUser" && network.password == "fb2022.com" #o facebook implementa seu proprio login
        return true
    end
    return false
end

function sendData(network::tp_facebook, message::String)
    messagePosted = databaseFb(message) #ele tem seu proprio metodo de salvar mensagens
    if messagePosted
        print("A mensagem foi postada. conteudo: " * message)
    end
    return messagePosted
end

function databaseFb(message::String)
    print("Mensagem salva no bd")
    return true;
end

function logout(network::tp_facebook) #o facebook implementa seu proprio logout
    network.userName = "None"
    network.password = "None"
    return true
end