local sounds = require ("eating-sound")

local apple = {
  type = "capsule",
  name = "apple",
  icon = "__factorio-apples__/graphics/Apple_JE3_BE3.png",
  icon_size = 160,
  subgroup = "raw-resource",
  capsule_action =
  {
    type = "use-on-self",
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "capsule",
      cooldown = 16,
      range = 0,
      ammo_type =
      {
        category = "capsule",
        target_type = "position",
        action =
        {
          type = "direct",
          action_delivery =
          {
            type = "instant",
            target_effects =
            {
              {
                type = "damage",
                damage = {type = "physical", amount = -16}
              },
              {
                type = "play-sound",
                sound = sounds.eat_apple_sound,
              },
            }
          }
        }
      }
    }
  },
  order = "h[raw-fish][apple]",
  stack_size = 64
}

data:extend({
  apple
})
