sum = 0
(0..1).each do |p_200|
  (0..((200 - p_200 * 200) / 100)).each do |p_100|
    (0..((200 - p_200 * 200 - p_100 * 100) / 50)).each do |p_50|
      (0..((200 - p_200 * 200 - p_100 * 100 - p_50 * 50) / 20)).each do |p_20|
        (0..((200 - p_200 * 200 - p_100 * 100 - p_50 * 50 - p_20 * 20) / 10)).each do |p_10|
          (0..((200 - p_200 * 200 - p_100 * 100 - p_50 * 50 - p_20 * 20 - p_10 * 10) / 5)).each do |p_5|
            (0..((200 - p_200 * 200 - p_100 * 100 - p_50 * 50 - p_20 * 20 - p_10 * 10 - p_5 * 5) / 2)).each do |p_2|
              sum += 1
            end
          end
        end
      end
    end
  end
end

puts sum

