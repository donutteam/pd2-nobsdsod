local message = "This lobby uses NoBSDSOD - a mod that re-balances the game to make it more fair and fun. You can find more information about it on ModBakery from Donut Team." 

Hooks:Add("NetworkManagerOnPeerAdded", "WelcomeMessage_Announce", function(peer, peer_id)
    if Network:is_server() then
        local Net = _G.LuaNetworking
        DelayedCalls:Add( "DelayedWelcomeMessage", 5, function()
            Net:GetPeers()[peer_id]:send("send_chat_message", ChatManager.GAME, message)
        end )
    end
end)