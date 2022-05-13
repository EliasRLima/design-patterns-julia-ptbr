
abstract type Network end

mutable struct tp_network <: Network
    userName::String
    password::String
end

function post(network::tp_network,message::String )
    if login(network)
        result = sendData(network, message)
        logout(network)
        return result
    end
end

function login(network::tp_network)
    return true;
end

function sendData(network::tp_network, message::String)
    messagePosted = true
    if messagePosted
        print("A mensagem foi postada. conteudo: " * message)
    end
    return messagePosted
end

function logout(network::tp_network)
    return true;
end