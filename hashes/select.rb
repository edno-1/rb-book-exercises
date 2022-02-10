family = {
  uncles: ["bob", "joe", "steve"],
  sisters: ["jane", "jill", "beth"],
  brothers: ["frank", "rob", "david"],
  aunts: ["mary", "sally", "susan"]
  }

immediate_family = family.select { |x, y| x == :brothers || x == :sisters }

arr = immediate_family.values.flatten

p arr