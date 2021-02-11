function deathTouch(part)
    if part then    --we need to see if the part that hit it is still there
        local plr = game.Players:GetPlayerFromCharacter(part.Parent) --we need to check if a player touched it. 
            if plr then
                plr.Character:BreakJoints()
            end
    end
end
 script.Parent.Touched:connect(deathTouch) --touch event to the script