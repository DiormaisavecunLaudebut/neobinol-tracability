body_relief_small = 100278
body_relief_big = 200085
anti_stress_small = 100137
anti_stress_big = 200042
wonder_woman_small = 100064
wonder_woman_big = 200089
sleep_ease_small = 100102
sleep_ease_big = 200089
focus_small = 100056
focus_big = 200077

Product.destroy_all

1000.times do |i|
  body_oil = Product.new()
  body_oil.code = "A#{body_relief_small}"
  body_oil.quantity = 10
  body_oil.img = "neobinol4"
  body_oil.name = "BODY RELEIF OIL"
  body_oil.save

  stress_oil = Product.new()
  stress_oil.code = "B#{anti_stress_small}"
  stress_oil.quantity = 10
  stress_oil.img = "neobinol1"
  stress_oil.name = "ANTI-STEESS OIL"
  stress_oil.save

  woman_oil = Product.new()
  woman_oil.code = "C#{wonder_woman_small}"
  woman_oil.quantity = 10
  woman_oil.img = "neobinol0"
  woman_oil.name = "WONDER WOMAN OIL"
  woman_oil.save

  sleep_oil = Product.new()
  sleep_oil.code = "D#{sleep_ease_small}"
  sleep_oil.quantity = 10
  sleep_oil.img = "neobinol2"
  sleep_oil.name = "SLEAP EASY OIL"
  sleep_oil.save

  focus_oil = Product.new()
  focus_oil.code = "E#{focus_small}"
  focus_oil.quantity = 10
  focus_oil.img = "neobinol3"
  focus_oil.name = "FOCUS ENHANCING OIL"
  focus_oil.save

  body_relief_small += 1
  anti_stress_small += 1
  wonder_woman_small += 1
  sleep_ease_small += 1
  focus_small += 1
end

500.times do |i|
  body_oil = Product.new()
  body_oil.code = "A#{body_relief_big}"
  body_oil.quantity = 10
  body_oil.img = "neobinol4"
  body_oil.name = "BODY RELEIF OIL"
  body_oil.save

  stress_oil = Product.new()
  stress_oil.code = "B#{anti_stress_big}"
  stress_oil.quantity = 10
  stress_oil.img = "neobinol1"
  stress_oil.name = "ANTI-STRESS OIL"
  stress_oil.save

  woman_oil = Product.new()
  woman_oil.code = "C#{wonder_woman_big}"
  woman_oil.quantity = 10
  woman_oil.img = "neobinol0"
  woman_oil.name = "WONDER WOMAN OIL"
  woman_oil.save

  sleep_oil = Product.new()
  sleep_oil.code = "D#{sleep_ease_big}"
  sleep_oil.quantity = 10
  sleep_oil.img = "neobinol2"
  sleep_oil.name = "SLEAP EASY OIL"
  sleep_oil.save

  focus_oil = Product.new()
  focus_oil.code = "E#{focus_big}"
  focus_oil.quantity = 10
  focus_oil.img = "neobinol3"
  focus_oil.name = "FOCUS ENHANCING OIL"
  focus_oil.save

  body_relief_big += 1
  anti_stress_big += 1
  wonder_woman_big += 1
  sleep_ease_big += 1
  focus_big += 1
end
