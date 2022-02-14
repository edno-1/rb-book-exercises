brothers = { oldest: "Johnny", middle: "Jimmy", youngest: "Jack" }
sisters = { old: "Jill", mid: "Jessica", young: "Jackie" }

siblings = brothers.merge(sisters)
p "After brothers.merge(sisters), the hash, brothers #{brothers}, remains unchanged and a new hash is returned"

siblings_two = brothers.merge!(sisters)
p "After brother.merge!(sisters), the hash, brothers #{brothers}, has been mutated"
