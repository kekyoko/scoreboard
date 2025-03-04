local developer = {
    ["STEAM_1:0:463932287"] = true, -- pack
}

function IsDeveloper(ply)
    if IsValid(ply) and ply.SteamID then
        return developer[ply:SteamID()]
    end
    return false
end

local admins = {
    ["founder"] = true,
    ["admin"] = true,
    -------ДОБАВЬТЕ СВОИХ
}

function IsStaff(ply)
    if IsValid(ply) and ply.GetUserGroup then
        return admins[ply:GetUserGroup()]
    end
    return false
end

function ResponsiveX(x)
	return x * (ScrW() / 1920)
end

function ResponsiveY(y)
	return y * (ScrH() / 1080)
end

function getMaterial(png)
	return Material("materials/" .. png .. ".png", "noclamp smooth")
end