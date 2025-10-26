local entity = data.raw["assembling-machine"]["big-crusher"]
if not entity then return end

local SCALE = 4 / 3

entity.icon = "__IndustrialRevolution3Assets1__/graphics/icons/64/steel-grinder.png"
entity.integration_patch = nil
entity.graphics_set = {
    status_colors = STATUS_COLORS,
    animation = {
        layers = {
            {
                animation_speed = 0.375,
                draw_as_glow = false,
                draw_as_light = false,
                draw_as_shadow = false,
                filename = "__IndustrialRevolution3Assets2__/graphics/entities/machines/grinders/steel-grinder-base.png",
                frame_count = 30,
                height = 192,
                line_length = 5,
                priority = "high",
                scale = 0.5 * SCALE,
                shift = { 0, -0.09375 * SCALE },
                width = 192,
                x = 0,
                y = 0
            },
            {
                animation_speed = 0.375,
                draw_as_glow = false,
                draw_as_light = false,
                draw_as_shadow = true,
                filename = "__IndustrialRevolution3Assets1__/graphics/entities/machines/assemblers/iron-shadow.png",
                height = 192,
                priority = "high",
                repeat_count = 30,
                scale = 0.5 * SCALE,
                shift = { 0.5 * SCALE, -0.09375 * SCALE },
                width = 256,
                x = 0,
                y = 0
            }
        }
    },
    working_visualisations = {
        {
            always_draw = true,
            animation = {
                animation_speed = 0.375,
                draw_as_glow = false,
                draw_as_light = false,
                draw_as_shadow = false,
                filename =
                "__IndustrialRevolution3Assets1__/graphics/entities/machines/assemblers/steel-indicator-3-fan.png",
                frame_count = 30,
                height = 64,
                line_length = 5,
                priority = "high",
                scale = 0.5 * SCALE,
                shift = { 0, 0.90625 * SCALE },
                width = 64,
                x = 0,
                y = 0
            }
        },
        {
            always_draw = true,
            animation = {
                animation_speed = 0.375,
                blend_mode = "additive",
                draw_as_glow = true,
                draw_as_light = false,
                draw_as_shadow = false,
                filename = "__IndustrialRevolution3Assets1__/graphics/entities/machines/assemblers/assembler-glow.png",
                frame_count = 30,
                height = 128,
                line_length = 5,
                priority = "high",
                scale = 0.5 * SCALE,
                shift = { 0, -0.09375 * SCALE },
                width = 192,
                x = 0,
                y = 0
            },
            apply_tint = "status",
            light = {
                intensity = 0.4,
                shift = { 0, 0.65625 * SCALE },
                size = 3
            }
        }
    }
}
