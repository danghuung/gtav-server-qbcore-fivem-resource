
local function drawCircleMarker(distancePlayerToZone, distanceDetect, zoneCoords, metaData)
    local metadataDefault = {
            zoneDiameter = 3.5,
            zoneHeight = 0.5,
            colorR = 0,
            colorG = 255,
            colorB = 0,
            colorAlpha = 150
    }
    if not metaData then
        metaData = metadataDefault
    end

    if distancePlayerToZone <= distanceDetect then
        DrawMarker(1, zoneCoords.x, zoneCoords.y, zoneCoords.z - 1.0,
            0.0, 0.0, 0.0,         -- Turn
            0.0, 0.0, 0.0,         -- Tilt angle
            metaData.zoneDiameter, metaData.zoneDiameter, metaData.zoneHeight, -- Marker Dimensions (Width x Height x Thickness)
            metaData.colorR, metaData.colorG, metaData.colorB, metaData.colorAlpha,        -- Color (R, G, B, Alpha)
            false, false, 2, nil, nil, false)
    end
end

exports('DrawCircleMarker', drawCircleMarker)
