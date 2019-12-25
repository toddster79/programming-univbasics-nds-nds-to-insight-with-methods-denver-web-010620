$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  gross = 0
  movie = 0
  while movie < director_data[:movies].length do
    gross += director_data[:movies][movie][:worldwide_gross]
    movie += 1
  end
  gross
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  director_count = 0
  while director_count < nds.length do
    result[nds[director_count][:name]] = gross_for_director(nds[director_count])
    director_count += 1
  end
  result
end
