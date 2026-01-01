local currentGameId = game.PlaceId
print("ID do Jogo: " .. currentGameId)

-- Lista de jogos e seus exploits
local exploits = {
    [4924922222] = "https://raw.githubusercontent.com/techwearhubofc/Scripts/refs/heads/main/Brookhaven",
    [7227399863] = "https://raw.githubusercontent.com/techwearhubofc/Scripts/refs/heads/main/AnimeTower",
    [99421051519131] = "https://raw.githubusercontent.com/techwearhubofc/Scripts/refs/heads/main/ColorGame"
}

-- Verificar se o jogo atual está na lista
local exploitUrl = exploits[currentGameId]

if exploitUrl then
    print("Jogo detectado! Executando exploit...")
    
    -- Carregar e executar o script
    local scriptContent = game:HttpGet(exploitUrl, true)
    loadstring(scriptContent)()
    
    print("Exploit executado com sucesso!")
else
    print("ERRO: Jogo não suportado!")
    print("Adicione este ID à lista: " .. currentGameId)
end
