---------------------------------------------------------------------------------------------------
-- func: getid
-- desc: Prints the ID of the currently selected target under the cursor
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 1,
    parameters = ""
};

function me()
    local targ = player:getCursorTarget();
    if (targ ~= nil) then
		windower.send_command('input /echo target ~= nil')
        player:PrintToPlayer(string.format("%s's ID is: %u ", targ:getName(),targ:getID()));
    else
		windower.send_command('input /echo doesnot ~= nil')
        player:PrintToPlayer("Must select a target using in game cursor first.");
    end
end;