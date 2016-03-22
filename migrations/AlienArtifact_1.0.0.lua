for i, player in ipairs(game.players) do
    player.force.reset_recipes()
    player.force.reset_technologies()
end

for index, force in pairs(game.forces) do
    -- Generate technology and recipe tables
    local tech = force.technologies
    local recipes = force.recipes

    -- Unlock researched recipes
    if tech["alien-technology"] and tech["alien-technology"].researched then

        if recipes["c-alien-artifact"] then
            recipes["c-alien-artifact"].enabled = true
        end
    end
end
