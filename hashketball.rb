require "pry"
def good_practices
  game_hash.each do |location, team_data|
    #are you ABSOLUTELY SURE what 'location' and 'team data' are? use binding.pry to find out!
    binding.pry
    team_data.each do |attribute, data|
      #are you ABSOLUTELY SURE what 'attribute' and 'team data' are? use binding.pry to find out!
      binding.pry
 
      #what is 'data' at each loop throughout .each block? when will the following line of code work and when will it break?
      data.each do |data_item|
          binding.pry
      end
    end
  end
end
good_practices

def game_hash
  nba_hash = {
    :home => {
      :team_name => "Brooklyn Nets",
      :colors => [Black, White],
      :players =>
      { :name => "Alan Anderson",
        :number => 0,
        :shoe => 16,
        :stats => {
          :points => 22,
          :rebounds => 12,
          :assists => 12,
          :steals => 3,
          :blocks => 1,
          :slam_dunks => 1}},
        
        {:name: "Reggie Evans", 
        :number => 30,
        :shoe => 14,
        :stats => {
          :points => 12,
          :rebounds => 12,
          :assists => 12,
          :steals => 12,
          :blocks => 12,
          :slam_dunks => 7}},
        
        {:name => "Brook Lopez",
        :number => 11,
        :shoe => 17,
        :stats => {
          :points => 17,
          :rebounds => 19,
          :assists => 10,
          :steals => 3,
          :blocks => 1,
          :slam_dunks => 15}},
        
        {:name => "Mason Plumlee",
        :number => 1,
        :shoe => 19,
        :stats => {
          :points => 26,
          :rebounds => 11,
          :assists => 6,
          :steals => 3,
          :blocks => 8,
          :slam_dunks => 5}},
        
        {:name => "Jason Terry",
        :number => 31,
        :shoe => 15,
        :stats => {
          :points => 19,
          :rebounds => 2,
          :assists => 2,
          :steals => 4,
          :blocks => 11,
          :slam_dunks => 12}}
    ]
    }, 
  :away => {
    :team_name => "Charlotte Hornets",
    :colors => [Turquoise, Purple],
    :players => [
        {:name => "Jeff Adrien",
        :number => 4,
        :shoe => 18,
        :stats => {
          :points => 10,
          :rebounds => 1,
          :assists => 1,
          :steals => 2,
          :blocks => 7,
          :slam_dunks => 2}},
        
        {:name => "Bismack Biyombo",
        :number => 0,
        :shoe => 16,
        :stats => {
          :points => 12,
          :rebounds => 4,
          :assists => 7,
          :steals => 22,
          :blocks => 15,
          :slam_dunks => 10}},
        
        {:name => "DeSagna Diop",
        :number => 2,
        :shoe => 14,
        :stats => {
          :points => 24,
          :rebounds => 12,
          :assists => 12,
          :steals => 4,
          :blocks => 5,
          :slam_dunks => 5}},
        
        {:name => "Ben Gordon",
        :number => 8,
        :shoe => 15,
        :stats => {
          :points => 33,
          :rebounds => 3,
          :assists => 2,
          :steals => 1,
          :blocks => 1,
          :slam_dunks => 0}},
        
      
        {:name => "Kemba Walker",
        :number => 33,
        :shoe => 15,
        :stats => {
          :points => 6,
          :rebounds => 12,
          :assists => 12,
          :steals => 7,
          :blocks => 5,
          :slam_dunks => 12}}]
  }
}
end

def num_points_scored(name)
  name.capitalize!
  if nba_hash[:home][:players][:name].include?(name)
    nba_hash[:home][:players][name][:points]
  elsif nba_hash[:away][:players]{:name].include?(name)
   nba_hash[:away][:players][name][:points]
  end
end

def shoe_size(name)
  name.capitalize!
  if nba_hash[:home][:players][:name].include?(name)
    nba_hashl[:home][:players][name][:shoe]
  elsif nba_hash[:away][:players]{:name].include?(name)
   nba_hash[:away][:players][name][:shoe]
  end
end

def team_colors(team_name)
sym = team_name.to_sym
  if nba_hash[:home].include?(sym)
    nba_hash[[sym][:colors]
  else nba_hash[:away].include?(sym)
    nba_hash[:away][:colors]
  end
end
end 

def team_names(nba_hash)
  puts "[#{nba_hash[:home][:team_name]}, #{nba_hash[:away][:team_name]}]"
end

def player_numbers(team_name)
    sym = team.to_sym
    player_numbers = []
    
      nba_hash[sym][:players].each_value do |ele|
      player_numbers << ele[:number]
      end
    return player_numbers
end

def player_stats(name)
  player_name.capitalize!
  if nba_hash[:home][:players].include?(name)
    nba_hash[:home][:players][name][:stats]
  elsif nba_hash[:away][:players].include?(name)
    nba_hash[:away][:players][name][:stats]
  else
    "No player found."
  end
end











