-- Properties --
game.Workspace.Baseplate.Material = "Plastic"

local baseplate = game.Workspace.Baseplate
baseplate.Transparency = 0.5
baseplate.CastShadow = false


-- Functions --
local baseplate = game.Workspace.Baseplate

local function changeTransparency()
	baseplate.Transparency = 1
end

changeTransparency()

-- Operadores Aritmeticos --
local function soma(a, b)
	local c = a + b
	print(c)
	return c
end

local function sub(a, b)
	local c = a - b
	print(c)
	return c
end

local function mult(a, b)
	local c = a * b
	print(c)
	return c
end

local function div(a, b)
	local c = a / b
	print(c)
	return c
end

local function mod(a, b)
	local c = a % b
	print(c)
	return c
end

soma(2, 3)
sub(10,5)
mult(3,4)
div(9,6)
mod(10,3)

-- Condicionais --
local function checarIdade(idade)
	if (idade >= 18) then
		return "Você é maior de idade e tem "..idade.." anos"
	else
		return "Você é menor de idade e tem "..idade.." anos"
	end
end

local maiorIdade = checarIdade(20)
print(maiorIdade)


-- For --
local number = 5

for i = 1, number, 1 do
	print(i)
end

-- While --
local number = 0

while number < 5 do
	print(number)
	number+=1
end

-- Events
game.Players.PlayerAdded:Connect(function(player)
	print("A new player has joined")
	print(player)
end)


local function playerAdd(player)
	print("A new player has joined")
	print(player)
end

game.Players.PlayerAdded:Connect(playerAdd)


local touchPart = game.Workspace.TouchPart
local partIsTouched = false

touchPart.Touched:Connect(function(otherPart)
	if (partIsTouched == false) then
		partIsTouched = true
		touchPart.Material = "Leather"
		touchPart.Color = Color3.fromHex("#a51279")
	print(otherPart.Name)
	
	task.wait(2)
	partIsTouched = false
		touchPart.Color = Color3.fromHex("#a51230")
	end
end)

