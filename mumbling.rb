def accum(s)
  res = ""
  s.chars.each_with_index do |char,i|
    res += "-" if i > 0
    res += (char.upcase + (char.downcase * i))
  end
  res
end

def accum2(s)
  s.chars.each_with_index.map{ |c, i| c.upcase + c.downcase * i }.join('-')
end

def accum3(s)
  s.chars.map.with_index(1) { |char,index| (char*(index)).capitalize }.join("-")
end

require "test-unit"

class TestAccum < Test::Unit::TestCase
  sub_test_case 'Basic tests' do
    test 'test_accum' do
      assert_equal "Z-Pp-Ggg-Llll-Nnnnn-Rrrrrr-Xxxxxxx-Qqqqqqqq-Eeeeeeeee-Nnnnnnnnnn-Uuuuuuuuuuu", accum("ZpglnRxqenU")
      assert_equal "N-Yy-Fff-Ffff-Sssss-Gggggg-Eeeeeee-Yyyyyyyy-Yyyyyyyyy-Llllllllll-Bbbbbbbbbbb", accum("NyffsGeyylB")
      assert_equal "M-Jj-Ttt-Kkkk-Uuuuu-Bbbbbb-Ooooooo-Vvvvvvvv-Qqqqqqqqq-Rrrrrrrrrr-Uuuuuuuuuuu", accum("MjtkuBovqrU")
      assert_equal "E-Vv-Iii-Dddd-Jjjjj-Uuuuuu-Nnnnnnn-Oooooooo-Kkkkkkkkk-Mmmmmmmmmm-Mmmmmmmmmmm", accum("EvidjUnokmM")
      assert_equal "H-Bb-Iii-Dddd-Eeeee-Vvvvvv-Bbbbbbb-Xxxxxxxx-Nnnnnnnnn-Cccccccccc-Ccccccccccc", accum("HbideVbxncC")
    end
  end
end
