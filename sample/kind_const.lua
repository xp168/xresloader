local const_res = {
  game_const_config = {
    EN_GCC_SCREEN_WIDTH = 1136,
    EN_GCC_SCREEN_HEIGHT = 640,
    EN_GCC_CAMERA_OFFSET = 268,
    EN_GCC_FORMULAR_TYPE_MASK = 10,
    EN_GCC_LEVEL_LIMIT = 999,
    EN_GCC_RESOURCE_MAX_LIMIT = 9999999,
    EN_GCC_SOLDIER_TYPE_MASK = 100,
    EN_GCC_PERCENT_BASE = 10000,
    EN_GCC_RANDOM_RANGE_UNIT = 10,
    EN_GCC_ACTIVITY_TYPE_MASK = 1000,
  },
}

local function extend(dst, src)
  for k, v in pairs(src) do
    if not dst[k] or 'table' ~= type(v) then
      dst[k] = src[k]
    else
      if 'table' ~= type(dst[k]) then
        dst[k] = {}
      end
      extend(dst[k], src[k])
    end
  end
end
extend(_G, const_res)

return const_res
