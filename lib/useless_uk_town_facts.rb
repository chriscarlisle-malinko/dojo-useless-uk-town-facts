class UselessUKTownFacts

  def initialize(localities)
    @localities = localities
  end

  def longest_name_containing_most_instances_of(letter) 
    most_instances = 1
    longest_length = 1
    candidates = []

    @localities.each do |word|
      length = word.length
      next if length < longest_length
      
      instances = word.count(letter.downcase + letter.upcase)
      next if instances < most_instances

      if instances > most_instances || length > longest_length
        most_instances = instances
        longest_length = length
        candidates = [word]
      else
        candidates << word
      end
    end

    case candidates.length
    when 0
      ""
    when 1
      candidates[0]
    else
      candidates
    end

  end


end
