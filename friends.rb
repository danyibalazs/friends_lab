def get_name(person)
  return person[:name]
end

def favourite_tv_show(person)
  return person[:favourites][:tv_show]
end

def likes_to_eat(person, food)
  return person[:favourites][:snacks].include?(food)
end

def add_friend(person, new_friend)
  person[:friends].push(new_friend)
end

def remove_friend(person, friend)
  person[:friends].delete(friend)
end

def total_money(people)
  total = 0
  for person in people
    total += person[:monies]
  end

  return total

end

def loan_money(lender, lendee, amount)
  if amount > lender[:monies]
    return "Not enough money"
  end
   lender[:monies] -= amount
   lendee[:monies] += amount


end

def all_snacks(people)
snacks = []
  for person in people
  snacks.concat(person[:favourites][:snacks])
  end
  return snacks
end

def no_friends(people)
  loners = []
  for person in people
    if person[:friends].length == 0
      loners.push(person[:name])
    end
  end
  return loners
end
