

class CharClass
end

class Squire < CharClass
  @alias = "SQR"
  STAT_MULTIPLIER = {
    "HP" => 100,
    "MP" => 75,
    "SPD" => 100,
    "STR" => 90,
    "INT" => 80
  }
end

class Knight < CharClass
  @alias = "KNT"
  STAT_MULTIPLIER = {
    "HP" => 120,
    "MP" => 80,
    "SPD" => 100,
    "STR" => 120,
    "INT" => 80
  }
end

class WhiteMage < CharClass
  @alias = "WHM"
end
