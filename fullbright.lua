local Light = game:GetService("Lighting")
local isFullBright = false -- Variable para controlar si el efecto de brillo completo está activado o no

function doFullBright()
    Light.Ambient = Color3.new(1, 1, 1)
    Light.ColorShift_Bottom = Color3.new(1, 1, 1)
    Light.ColorShift_Top = Color3.new(1, 1, 1)
    isFullBright = true
end

function undoFullBright()
    -- Restablecer los valores de iluminación a los predeterminados o como desees
    Light.Ambient = Color3.new(0.5, 0.5, 0.5)
    Light.ColorShift_Bottom = Color3.new(0, 0, 0)
    Light.ColorShift_Top = Color3.new(0, 0, 0)
    isFullBright = false
end

function toggleFullBright()
    if isFullBright then
        undoFullBright()
    else
        doFullBright()
    end
end

-- Llamar a la función doFullBright inicialmente si deseas que el efecto esté activado al cargar el script
-- doFullBright()

Light.LightingChanged:Connect(function()
    if isFullBright then
        doFullBright() -- Volver a aplicar el efecto si hay un cambio en la iluminación mientras está activado
    end
end)
