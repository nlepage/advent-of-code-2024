def solve(input)
  lines = input.split
  grid = lines.map(&:chars)
  grid2 = grid.transpose.map(&:reverse)
  lines += grid2.map(&:join)
  lines += (0..(grid.length-4)).collect { |l| (l...grid.length).collect { |y| grid[y][y-l] }.join }
  lines += (1..(grid.length-4)).collect { |c| (c...grid.length).collect { |x| grid[x-c][x] }.join }
  lines += (0..(grid2.length-4)).collect { |l| (l...grid2.length).collect { |y| grid2[y][y-l] }.join }
  lines += (1..(grid2.length-4)).collect { |c| (c...grid2.length).collect { |x| grid2[x-c][x] }.join }
  p lines.map { |l| l.scan('XMAS').length + l.scan('SAMX').length }.sum

  squares = (0..grid.length-3).collect { |y| (0..grid.length-3).select{ |x| grid[y+1][x+1]=='A' }.collect { |x| grid[y][x]+grid[y+2][x]+grid[y][x+2]+grid[y+2][x+2] } }.flatten
  p squares.count('MMSS')+squares.count('SSMM')+squares.count('SMSM')+squares.count('MSMS')
end


TEST_INPUT = <<~EOF
MMMSXXMASM
MSAMXMSMSA
AMXSXMAAMM
MSAMASMSMX
XMASAMXAMM
XXAMMXXAMA
SMSMSASXSS
SAXAMASAAA
MAMMMXMMMM
MXMXAXMASX
EOF

INPUT = <<~EOF
SAMMSSSSXSAMXMSMASMMSMSSMMSSXMASMAMMAMSSMSMSAXSSXMXMSASXMSAMXSMMXAMXMMSMSSMXSAMXMMASMSMSMMMAXAAXXASXMMXMSSXMASMMSMXAMSMMMMMAMXSASAMXMMXSAMXM
SAAXAASAASXAAAAAMAAXMAAAMSAAAXAXMAXMSASAASAXAMAMXMSMMAXMAXAMXXAASMSMMAAXXAASASXSXSAMXSAMXAXMSMSMSMMASAMXMSXXAAMSAMMMSMMMAAMAMAXAMXSAMXMAMMAM
SMMMMSMMMMMSMSXSSSSMMMMMMMMSMMASMXXAMXSXMMMMSAMXAMAAMMMAMSSMMSMMSAAXMSSSSMXMAAXSAMXSAMMMMSXXAAAAAAMMMSSMAMMSSMMSASXMAAMSSXSASMMXMASASMAMMMAM
SAAXXMASAXAXMMMXAAXASAXXAMXXXXMMASMXMASAMXXAMSXSSSSSMAXAMXXAAAAAMXMMAAAAXXXMMSAMXMMMMMSAAMXSMSMSMSMMAXXMAXMAMAASXMASXSMAMXSASMSSMASXMXSXSSSS
SSMSSXASXMXSASAMMMMMAAXSAMXXMASMAMMAMXXXMMMMSMXAAMAAXXSSSMSMMSAXSAXASXMMMMXXSXMSAXAMAMMMSMASAXAMAMAMXSXXSAMASMMSASMMAMMSSMMAMAAMMASXMMMAMAAS
XAXXAMXSMXXSAXXSASMSMAMXAMXMMASMXMMSSSMAXMASMMMMMMSMMMAMAMAAXXXSXMMMMAMXMXMMMAASASXMMMXMAMAMAMAMASMMSMMAXMMASAMSMMXMSMAAAXMAMMMSMXXAMAMAMMMM
MSMAMMMMAXMMMMSMASAAXAMSSMSXMASMSMAAAASMMSMSAXMASAAAAMASASMSMASMMXAASAMXAAAAMMMMAAMXXSMSXMASXXASAMAXAAMAMXMASAMXSMXSXMMSSMMMMSAMMSSMMXSAXMAS
SAAXXAAXMXMAMMAMAMMMMXXAXAXXMASAAMMMSXMXAAMMMMMAMXSSXSASASAAMXMAMSMMMMMSSXXSXXXMSMSXMAMSAMXMASMMMSMSXXMASMMASAMASMMMXMAMAMSMMMAMAMMASAMMSAMS
SMSMXSSSMXSASAMMMSAXASMSMSMSMMMXMXXXXMMMMMXAAMMAXMMMXMAMMMXMSASAMXSMSXAAXMAMMSXMASMXAMXMAMXSAMXAAMXSXASASXMAMAMAXAASXMASAMAAXSMMAXSAMASAMAMX
MMAMAAAAAMSAMXXMASAMXSAMAMMAAMAAMMMXMASMSMMSSXXAXSMSSSSXMASXSMMASAMSAMMXSAAMASAXMASXSSMXASAMXSXMXXAMSXMASXMAMSMMSSMSAMAMAMSAMXAXMXMMSAMASMMS
ASASMMSMMMMSMXMXASXXXMAMAMSXSMSMSAAAAXSAAXAXMXMSMSAAMAMXMAMMXMSMMASAMMSXSMXSASAMXAXXAAMSMMMSMMASMMMXAXMMMXMXXMAMAAASAMXSMMXMXSMMSSSXSMSAXMAS
MMMSXAAXAMXAMASMASAXSSSMSXMAAAMAMXSMSMMMMMMXMXAXAMMMMAMXMAXAAMAXMXMMXAXXMAMMMMAAMMSMMMMAAAAAMMAMXAMASMSMMXAMXSAMMMMMASAAXAXSASAMAAXAMAMXMMAM
XSSSMSSSSSSMSASMSMMMMAMAXAXSMMMSMAMAXAMAMASAAMSMSMSXSASASMSSMSSSXAAXMXSMMAMAASXMXMAXXAXXXMXSMMASMMMAXMAAMMSAMSAMXSXMAMXSMSSMASAMMXMAMAMXAMAS
XSXMAMXAMAAAMMMXAAMSXMMSMMMMAMAXMAMMSSMASASMMMAAAXXASAXAXMAAAAMMXAMXMASAMASMXMXMAXXSSSSMXSAXASXSAXMSSMSXSAAXAXAXMSAMXSXMAXAMASXMXMSASASMMSAS
SMMMSMMMMSMMMSMSXSMMAMXXAMASMMMSSXSAAXXXMAMXASXSMSMMMSMXMASMMMAAMSMSMAMAMXXXSXASMSMMMAAAAMMSAMAMXMAAAXAMMMMMSAMMXMAMAXMSMSAMXXAXXASASXMAXMAS
MAAAAAASAXAAXAAXAXMSMMASAMASXMXMASMMMSAMMXMSASAMAXAAAMXSAXXXXMMXMXAXAMXMMSMAXSMXMAAAMXMMMSMSMMMMMSMXSMMSSSXAAAAXMSMMXMASAMMMMMSMMMMAMXMAMMAM
SSMSXSMMSMSMSMSMXMAXXMXSAMAXMAMXXXXXAAMSSMAMAMMMSMSMMMAXMASXMSSMSMMMXSAXAAMXMXXASMSMSAMSMAASAMXAAXMXXAXAAMMXSSMMMAMASMAMAMSMSAAAXXMXMMSMAMAS
XMAXXAXAXMAASXMMSMMMMSMSXMASMSXSXSSMMSXAXMAMAMAMAMXMXMXMMAMAAAMAAAXAASAMSSXSMXSXSXAASMSASMSMAXSMSSMAMMMMXMMXAXAXSAMASMXMASAAMSSMMSMXMAAXMSAS
SMAXSXMASAMMMAMAMAMXAAASASXMAXAXAAXAXAMXXSASASASXSASASAAMASMMMSSXXMMMSXAMMMAMAMAMMMMSXSASXXXSMXAXXMAMAXXASAMMMMMSAMASMXSMSMSMAMASASAMXMSMMAS
XMMMAXMASMXAXAMAXAMMSSSSXMAMAMMMSMSXMMSMMMXSXSASMSASAMSAMXSXAAXMXSASXSMAAASAMMSAMXSAMAMAMAMMAMXSMSXMXXMXMSAMXAAMXAMASAMXASAAMAXMSASXSAMAMMAM
SAMMMXMASXSASXSSSMSAXMAXAXAMXSXAMXSMAAAMASXMAMMMXMAMXMMMSMXXMMSAASAMASASMMSAMASASXMASMMMMSMAMMAXAXASXXSAAMAMSXSMMXMXXASXSMSMSMSAMAMAMMSMSMMS
SAXMXAMXSMMXAXXAAAAMXAAMMSSSXMMMSAMXMMSSMSAXAMXSXMMSMMMASAXXMMMMMSSMSMMXAASXMASXMASAMAAAAXXSXMMSSMMMAASMMSMMSAAASXMMSAMMXAXMAXMAMAMAMXAASAMX
SXMMSASASXXMASMSMMMSMMSSXAXMAMMMMXSAMXAMXSMMXSXAXMASASMASXSMMAXMAMAMXMSSMMMAMASXXAMXSSMMXSSMAAAAAXXMMMMXMAMAMMMMMAAXMMMSSMMSSXSSSMSASXMMSAMX
SAMXAAMASXMAXSAAXMAMXAAMMSMSAMAASASASMXSAMXMASXXMMXXAMMAXAXAXMSMMSAMAMMMAXSXMAXAMAMXXMXMASAMMMXSMMMXMMMXXAMAAAXXSMMMSXXXMAAXMAXAAAXMMXXXSAMX
SMMAMMMMMAMSMMMSSMXSMMSSMXAMMSSMSASMMMAMASASAMXASXSMMMMSXSXSAMXAXSASMSASAMXAMSMXAAXMASAMXMASAMXMXAAXXAXMSMSMSMSASAMASMSMSMMSMSMSMMMAXASASAMX
SMSMSAXSXXMAXAAMAMAAAXAXAMAMMXMAMXMMAMXXAXXXAMMXMAAMAXXXAMAMAXMXMMAMXXASXASXMAAMSXSAAMMSXSAMXSSSSSSMSXSAAXAXAMXMSAMASXSAAAXXAMXMASMSXAXAMAMM
XAASMMXAXSSSSMXSAMXSSMMMMMSXAAMXMAMMASAXSSMSAMMAMSMSASXMAMASMMMSSMMMSMAXXMXMMMSMMASMXMSAMMXMXSAAAXXXAAMXMSXSMMAXSXMASAXAMSMXSSXSASAMMSMMMSMM
MMMSMXSMXMAMXMAMXSAMMMXAXSAMMXMAXAMSAXMMMAMMMMMMMXAMXXXMMMMSAAAAAAXAXMXMSMSXAXAAMAMMMMMASXSSXMMMMMMMMSMMXSAAXSSMSXSMMMMSXXAMXAASAMAXMAAAAMAX
ASXMMAMXAMAMAMAMAMXSASAXXAMXXAASXMMMMXSAMAMXSAXMAMXMSSSXSAAMMMMXSMMMSXAAAASXSMSXMAMAAASXMAAMMSXXXAAAXXASAMXMMAMXXAAMAMMMMMAXMMMMXMAMMASMXSAM
MAAAMMXSASASXSMSSMMSASMXMAXXMMMMMXAMXASASMSMSASMMXAMMAAASMSSMSMXMXXAXMSSMXMAXAMXMMXSXMSAMMMMAMXSXSXSSXXMAMAXMSSMMMMMAXAAAXSMAXASXMXXXMAMXXXA
SSSMXAXAAAMAAAAAAAXMXMASMSMSMAAASXSSMMSMMXAAMAMAMSSMMMMMMMAAAAMMMAMMMXMAXXMAMAMMXSAMASXXMAMMXSAMMMXMMMSMSMSSXAAXXXASXSSSSSXAXMAXASAMXXAXMAMS
MXMAMXMMXMSSSMMSMMMMMMAXXAAAXSMMMAAMAXMASMMMMAMXMAMXSMXMASMMMMMAMASAAMSAMSMMSMMSAMASMXMASMMSMMMMAMMXAAXAAAXAMMSAMXMXAMAAMMMSMMSSMMAMXMMAASMM
SSMMSSMXAXAAAMXMASAMXSSMSMSMXMXSMMMMSMMMAAXASMSSMAMMMAASXSXMXSMMXASMSXMASAMAMXAMASASAASMMSASASMSSSMMXMMSMSMSAXXAXAMMSMMMMAAAAXAAMMAMAASMMXAS
AAAAAAAMMMMSMMAMXXASAXAAMAMMASAMXXAAAASMSSMASAAMSMSMMSMSMMMMASASMAXXXMASMXMASMXSAMAMMXSMAMXSAMAAMAASAMXXXXXASAXAMXXAMASMSMSSSMSSMSMSXMXMASAA
MSMMSXMXMAMAMMASXMMMXSMXMAMMAMAMSXMSSMMMAMMXMMMMSMAXXAMXXAAMSMAMAMSMMSMMMXSAMMAMXMAMMXXMAMAMAMMMSSMMXMASMXMMMXSSMXMXMXMAXAXMAMXXAAAXMSSMMMSM
XMXXXMMAMXXAXSASASAAXMAMSXSMASAMXAXAXXXMAXXSASXAMSMMXASXMSMSAMAMXXAAAAAAMMMMSMXMMMMSXMXSAMASAMAXMAMMMMAMMXMXMAXAAAMSAMMMMSMMMSAMMMXMAXAASAMX
MSMMSASMSSMMMMASAMMSMAMXSMXMAXXSSXMASXSSSSMAAAMXXASAXXMAAAXSXSASXSSSMSSMSXAASXMASAMXAMASMSMSASXSSMMAXMSXSAXAXXSMMMAAAMXXMXAXXMASXMASXSSMMASX
AAAAXMASAXAAAMMMMXXAAXMASMMMSSXMASMXMAAAASAMXMMMSASMSMAMMSXMASAMXAAAMXMASMMMSAMAXAXXAMASXSAMASAMXXSMSAMASXSMSAMXAXMSXMAXMMXMXXAMXMASAMAASXMX
SMSMMXMAXSMMXXSAMMSMSSMAXAMAAXXXAXMAMXMMMMMSAXAXMMMAAAXMAMAMAMXMMMMMMXMAXAAAXAMMSSMSSMXSAMXMAMAXAXSXSAMAMAAAAAMAXSXMMXSAASMMSMASXMASASXMMMAS
XXMMAAXSAMMSAMMASAXSAMMSSMMMSSMMMMSMMAMSXMXSXSMSAMMSSSMMXXMMSSMSXSMXMAMXXSMXMAMAAAXAXXAMXMAMXSSMMSXAXAMXMSMMMSMXSMAXAAMMAMAAASAMAMXSMMAMXMAM
SAMXSXMMASAMAMSAMMSMMSAMAMXMXMAAAAAMXMMSAMMSAXAXXMMAMAAXXXSAMAAXAXAASXMMXMAMSSMMSSMMSMXMAXAMASXASXMMMMMXMXAMXAMSAXXMMSXMXSMXMMMXMXMXASAMMMSS
MAMMXAXSAMXXSMMASMSAAMMSAMAAAMSSSSXSASXSAMAMMMMMSXMASAMMMMMASMMMMMSMSAAXAMAMAXAAAMAASAMSMSMSMSMSAMXAAXAXXSMXXAXSAMXSMXXSAMASXASAMXAMAMXSXAXX
SAMASMMMASXSAMXSXASMMXASAMASMXAMMXMMMSASMMXSXAXAMASAMAMAXASMMMXAXMXXSMMMMSSMMSXMMMSMMXMAMAAAMMMXXSSSXMXXASAAMSMMAMXAAMXMASASAAXAMMSAAMAMMMMM
SXMMSAAXSAMAMXMXMMMMSMASMMXAMMMMXMMSAMXMMXAAXASASAMASXSMSXSMAMSASMMMMAMXXAXXXXMXXAMMSMSXSMSMSAMXXMAMSXSSMMMMXXAMXSXMMAASAMXSMSSMMAMSMMAMAAAA
MMSASMMMXMASXSAXAXAASMMMMMMAMSSSMAXAXXMASXMMMMSAMASAMAAAXAMMAMMAAXMXMAMMMMSMSAMXMASAAMMXMXAAXMSMXMAMMMMAAAMMASAMAXMXSSMSASXXAXAXSXMAXSMSSSSS
XAMASXMASXAXXXSSXMMMSAMXAXSAMSAASMMSXXMSAMXAAAMXMXSXMSMXMMSXSAASXXSASASMAMXAXAMXXXMMMMSAMSSSSMAASMXMAAMXSMSMASAMXXAMXXMSXMMMSMXMXAMXMSAMXAMX
XSMXMAMAMAMMXMASMAMASMMMMXMASMSMMMAMMAMMMAMSSXMXSAMAAXMSMXAAMXMMMXSASAXXAMMSMSSMSMAASAXAXAAXAXXSMMASXSSMAAAMXSXMAMSMMSXMSAAXXAMSSSMMSMMSXMAM
SMSMSMMASAMAMXAMMAMXXAXSMMSMSAXMXMASMAMSSSMMMASMMASAMXAAMMMXMAAAXMMXMMSXMSXMXAAAAMXMMSSMMMXSMMSMMXMSXAAXMXXSAMAMMMMAAXAASXXMMSMAAAXMAAMXASMS
SASMAXMAXAXSAMSSSMSMSMMSAMAAMAMXMMMSXMSXAAMASAMAXAMAMASASXXASMSSSXMXAAMAAAXMMSXSSXSXAAMAXAAMXMXAASXMMSMMXAMXASAXMASMMXMMMSSXAXMMSMSSSSMSAMAM
MAMSXSMSMSAMXSXAAXAMAAMXXXMSMSMMXMMMAXAMSMMAMASXSSSMMAMAAASMSAXXAASMMASMMMXSAMXAAASMMMSAMMMSAMMAMXASAXSAMSAXAMMSSMSASAAAAXMMSXXMAMMAAXMAMMAM
MAMSXMAAAXXMMXXMMSMXSXXXMASMMAAAAXSMSMMAMAMXXMMAAAAXMASMMMMMMXSMSMXAMAAXAXAMASMMMMMAXXXMASAAAXMXSMSMSMMMMXAMSAMXAAMAMXSMSMXMASXSSSMMMMASASXS
XMMMMMAMMMMAASASAXMAMSMXAMXASXSMSMMAXSMASAMMSSMMMSMMMMXMAXXXAAXXAXSXMMXSXSMMXMXXSXSSMSMMMMMSMMMAAXXAXXMASMXMXAXSMMMSMMXAXXXXMAXXMAMXMXAMXAAM
MXAXAASXSAXXXAMMXSMASAMASMSMMAAMXAMMMAMASAMAAXAMAMAMXAAMSMSMMSSXMMMMMSAMAMAMMMXAXAAXAMXAAXMAMAMMSAMAMMSASASAXXXMASAAAMMXMASMSSSXSXMAMMXMAMXM
ASMSSMAMMMMSAMXSXSMXSAMMXAAXMSMMSMMXXXMASMMMXSAMXSMSSSXSAMAAXAXAMXMAAMASXSAMASASMMMMXMASXSSMSMSXMAMXMAMMSMMXMSMMAMMXAMXAAAXXAAXASXSMMSMASMMM
XAAAAMAXAMAMXXAXXXXASMMXMSMMXAAXMXSAMXSAMASXMXMXXMAMXAMSASMSMSSMMASMSSXMXSASXMAMXXAAXSXMAXMASXMASXMSMMXAMXXAMAAMSSSSSSXSSXMMMSMMSASAASXXMASM
SMAMXSMMMXXSAMMSMSMXMXXAXMASMSMMMAMASAAASAMMMAMSMMMMMMMSAMAXMAAASXSAAMAMXSMMMMSMMSASAMAMAMMAMAMXMAXXAAMSSMSMSXSXAAAAAAXMMMMSMAAXMAMMMSAXXXAM
XXSXMAAMSMMAXSMAAAAXSMSMXSAMAAMAMAMXMMMXMAMAXAXAAASASAAMMMAMMSSMMMMMMXXSAMXXMAMAAAXMASAMASMMXMMSMSMSXMXAAXXXAXMXMMMMMMMMAAXAXMSMMXMXMMMMASMS
SMMASMAMAAXMMAXMSMMXAAAAAMASXSSSSMSAAXSXMAMSMMSMSMSAMMSSSMSSXMMMAASAMXSMMMXMMSSMMSXMAXXXXSASXSMSAAASXMMSMMMMSSMAXAAXXAASMMSMXMAAXAXMXAXXXMXS
SASAMXAMMXMXXXAMXASXMMMSMSXMAMAAAMXAMXAMMSXXAASAXMMXMXAAXAXMXAASXSSXXXAAAAAXMAMAMXAMSSXSMMAMAAAMSMMMASAMMXSAMAXMASXSXMXMXAAXASXSMMSMSMSMXAAS
SXMASMMSSSSMSMMMMMMMAAAXAMXMXMMMSMMSMSMXXMAXMMMAMAAXMMMSMXMASMMXXAMAMMSMMSSMMASAMXAMAAASAMAMSMMMXSMXXMASAAAASXMXAMAMXSAMMXMSXSAXMXAAAAAMXMAS
MMSAMAMAAXSASXAAASAMMMXSAMXMAXXAAAAAAAXXXMSMSMMMMMASAAMXXMMMMMSMMMMMAAXAXAMMSASASMSMMMMMASXXXMXMSAXSAMSMMMSAMXAAMMAMASASAMMMMMXMMSMSMSMSXMAS
XAMXSAMMXMMXMASXSSXSXMASXXAXMXMXSSMMSMSXAAAAAXXMASAAMSSXAXASAAAAAMAXXSSXMASASXSAMAAAXAASAMXMAMAMSAMMAMXAXXXASMSMSMSMXMXMMXAAXMAMMAAAXAAXAMAS
MXSASXMAXMASMXMMMMAAXAMXMSSSSXSAAAXXMAMXXMMSMXAXMMXSXMAMASXSMMSSMSMSSXMXMXMMSAMAMMMMMAXMASXMAMAMMMMSMMSMMSSMAAAAAXXAXMASXSMSMSASXMSMSXXSMMAS
AAMASXMASMAXSAMXASMMMMSAMSAAAAMXSMMXMAMMMMXXMSMSXMAXAAAMXMMXMXAAAAMMAAXXSAMXMMMASASMXXMAXMASXSMSMMASAAAXMAMXMMMSMSMMMSMSASMAXMAMMAMXXMMMXAXS
SMMMMAMASMMMMMSSMSAAXAXMMMMMMSAMXAXXMAAAAMXSAAAXAMSSMMMMAXMASMMMSSSSSSMAMXSAXXSMXAXXXXXSAMXAAXAAXMASMSMSMMXAXAMAMXAXAXMXAXMMSMAMSMASMMAASXMX
MXSASAMMSAASAMXAASMMMMMSAAAAXMXASMMMSSSSSXMMSMXMAMAAMAXSSSMAMAXXAAAXAAMSMMSASMMMMSMMXSAXAXSMMMSMSMMSAAASXSMSMMXASMSMMSAMXMMAAMAMAMASASMMAMMX
MASXSASAXMMSASXSMSXSMAASMSSSSMMXXXMXAAMXMMAMXSMMAMSSMXMAAXMASMMMMMMMXMAXAMMAMXAAAMAAMAAMSMMAXAAXAAXMXMXMAMMMAAXSXMASXAAAAXMASMAMMXAMXMMMAASM
MXMMMAMMMMXXAMAMAXASAMXSAMXXAAMXMXMSMSMAMSMSAMXSAMAAMXSMSSSMSAXXAAMAMXASMMMMMSMMXXMXSMXMAXSAMSSMXAMXAMAMXMAMMMMMASAMMMSSMXXXMMASXMMSSXXMSMAA
XAAAMAMMXSXMXMXMAMMSAMXMAXXSXMMMAAXMAMMAMAAMAXAMAMSMMAXXAAAXXMAXSMMAMSXSASXAASAASXSMSXSAMMMMXMMMAAXXASAMAMAMAAAMAMASAAXAXMMAMMXXAMXAMAXAMXXM
XXMMMMXMASAMXXAXXXXSMMASMMMMMSAMMSSMXMSXSMXMSMMSSMAMMMSMMSMMMMXMAMSMMMASAMXMXSMMXAAAMAMXXSAMXSASMMSXASASMSSSSSSSMSMMMSXAAXAAMASMMMMASMASMMSS
MSSSMSSMMSXMASMSMAXSXSXXAMXAASAXSAMXAAXXMXMAXAXAAMAMXMAXAAMMMAASAMASAMXMMMSSMMXSMAMMMSMMMXAMAMAMAAXMMMMMMAMXAAAMAAXMAXMMMASXSASAMXSXXXAAAAAA
XSAAMAAAXMXMAMAAXXXSXMMSMMXMXSAMXMMSAMSXSXMASXMMSMSSSXSMASXAMSXSASAXMXXMAAXAAAAXMSAXXMAMXSXMXMMMMMMMXAXAMAMMAMASXMMSAXMASAMXMMSXMAAMMMSSMMSS
XMAMMSSMMMAMAMSMSMAMAMXASMXMAMXMAAMXMASXSXMASXASAMMAMAXXAMMSXMASAMXSMSMSAMSSMMSSMMAXSMSAASXSXAAXAAXXAASMXSMMXXASAMAMMMXAAAMXSAMXMMXSAAAXMAMX
MAXMAXAXXMAXAXAAXAASAMMMSXMXSXAMXSXAMASAMAMASXMMASMAMMMMMSAXAMAMMMMSAAAXMXMAMAAAAMXMXAMMSMAMSSMSMSMAAXXMAMAAXMASAMSSXMMSSSMAMASMSAMMMSSXMXAM
ASAMXSMMSSSSSSMSMSAMXSAXMASAMXSMXMXXMASASAMXMASXXMMAMMAAMMASXMAXXAAMXMMMSXXAMMSSMMAAMXMSAMAMMMAMAMASXMSMAMAMXSXSXMASAAAAAAMXSAMAMASMXAXAMSAS
MMASAXAXAAAXMAXXXAMXASXXSAMASAMMAMMXMXSASXSXSAMMSMSMSSSSSMAMXXAXMMSSSSSXMMSMMAMAASXSMXMXASMSAMXMAMMAXMAMASASAMAMMMASXMMXSAMXMAXMXXMAAMSMMAXM
AXAMASMMMMMMSMMSAMXMXSAXMXSAMXSMAXSMMMSMXMAAMMXAAAAAMAMAMMMXMMMSAAAAXAMAXAAAMXSSMMXAXSMSMMXMMMXMXXMMMSSSMXMMAXXMAMASAXAMXAXSASMXMSAXAMAMMMSM
MMMMXAXXMAMMXXAXAMSMMMXXXXMAMASXMXXAXAXMAXXXMAMSMSMSMMMASASAAAAMMMMSMMSSMSSSMXMASXSMMAMAXMASAMSMSMSXMAMXAMSSSXSMSSXSAMSSSMMSAMXAAXMMXSXMAXAX
XAXAMMXMAAMMMMMSAMAXXAMMSXSAMXSAMSSSMSASMSMAMAXMAMAXXXSMSASMSMSSXMAXAXMAMAXAMXXAXMAXAASMMSAXMMAAAAMXMASAMXMAMAMAASAMXMAAAXAMAMMMXXSAXSASXSMS
SXSMSMAMSXMAAAXMASMSMASAAXSMSMMMMAAXAMMXAAMAMMSMAMSXMAXAMAMAXAAMAXAMMSMSMMMXMMMAXSSMSASMAMMXSXMXMSMXSAMAXAMAMAMXMSXMAMMSMMXSAMXSAXMASMAMMAXX
SAXXAMXXAASXSXSAASXSAMMMSMSAAMASMMMMMMAMXMSAXSAMAMXMSASXMSMMMMMSXMMSXMAMMXMSAMMSAMXAMAXMSMSASXSXXXAXMASXMASXXAXXMXMMAMXMXSXXASAMMSAXSMMMSSMM
MAMXMAMXSXMXXXAMXXXMAMMMXAMSMSASAMXAAMMMAMMAMSAMXSXASASAAXXXAXXXXSAAXMAMAAASAAAXMASXMMMMASMAMAAAMMMMSMMMMASASMSMMAASMSMMAMXXSMXMAMXMXASAAAAX
MSMSMSMAXMSXSAXMASMSAMXAMXMXXMASAMSSXMASXSMMMMMMXMMXMAMMXMSMMMMMMMMMXSAMSSXSMMMXAMXAAXMSMSMSMAMMAAAAXAAXMASAMXAAXSMMXAAMSSXXMASMSMAMMXMMXXMM
MAAAAAMXMAAAXMMXSAASASMMSMMMXSASAXMXSMXXAAXMASASMXMSMAMXAMMMSAMAAMSSMSAXAMMXAAXSSMSSMXXAXSAMMAMXSXXXSSMSMMSXMSMMMXAXMMMMXAMXMAMAASXXMSSSMSXA
MMSMSMSSMMMSMAAXAXXXAMXAAAAAAMASAMMAMMMMSMMSXSASASMAMAMSMXAASASXMSAAASXMASMXSMXXXAMAMXSMSMMMSASAXMSMAMMXMAMAXSAMSSXMAAASXMMSMSMSMMXAXXAAASXS
SMXXAMAMXAMXXMASXMXSAMMXSSMMSMMMAXMAXAXXAAMXAMAMMASASAXAMSMXSXMASMXMMMSXXAAXMMSSMSMAMAAMAAAASASXMAAMAMSMSAXXMMAMAAXSSMXSAMXAAAAAMMSSMMMMMMAM
AMMSMMSSSSSMSXMAXAAAXXXXMAXAAASXXASMSMXSSMMMMMAXXMSMSXXAMAMMSAMXMAAXASXSAMMMXAAAAASAMXSMXXMMMAMAMSMSAMXAXMMSASMMMSMMASASAMSMSMSMSAAAAMSMXMSM
MAMXAXAAMMAAMMMAMMMMSXMSMAMMSMMXMAXMAAAMAMSSSSXSMXMASASMMASAMXSXXMXMXSAXSXMAMMMSSMXXXMMMMASXMAMXMXAMXSMSMAAMMMAAXAXSAMXSAMSAMAAXMMSSMMAMAMAM
SAMXAMMMMSMAMASXMXMXSAAAMASAAAXSXMSSMSMMAMAAXMASAMMAMMAXSXMMXSAMMMSMMMAMXMASXMXAMXXMSMAASAMASMSMAMMMMXAAMMMSMMSMMMXMSSMSXMMAMSMSXXAMXXMXMSAS
SASMSMAAMMSXSMSAMXSAMMSMSMSMSSMMMXAXXMASMMMSMMMMSASASXMMSMSAXMASXAAAAXMASXMAMXMMMMSAAMXMASXAXMAMXASAMXSMSXSAMXASAXXAAMXMMSSMMMAMMXXXMMSAMSAS
MAMAXMXMMAMXMASAMAMASAMXMMMXXMASAMMSMSAMMXMAMXXAXXSASXXASASMXSAMMSSSMSMAMXSMSMAXAAMSSMSXAMMXSSXMSASMSAMXXMSAXSASMSMMMSAAMASMAMAMMSMSMAMAXMAM
SSMSMMASMSMSSMXAMMSAMASXMASMSSMMSSXXASASAMXSSSMXSMMAMMMXMAMAAMAXAMXXXSMMSASXAMSMMXXMXAXMMMAMAAAMXAXAMASXXAXAMMAMXMASXXXSMAXMASMAMAAAMASXMMMM
SAAXAMAXMXAAMXSAMXMASXMMXAMAAASAMXMAMMAXXMAMAAXMMAMXMASAMAMMMSSMSSSMMSAAMASMXMMXSXSMMMMXASMMMMSAMMMMMMMAMSMSMMAMSSSMASXMMSXSAMXAXMSMSXSASASM
SMMMSMSSMMMMSMASXXSAMXMMSMSMXMAMSAMSAMXMMMXMSMMSSMMXSASASASXXAAAAXAMXMMMMSMMXAMXMAMXAMXMMXXAXXAMAAASASMXMAAAAMMSAXAXXSAAXAASASXMSAMXMASAMASX
XSAAXAAAAXMAMMAMXMMMMAXAAAAXMAAXSASXAXMMXSXAAMXXAAAXMXMASAXAMSSMXSMXXXXXXMASMMMXMAMSSXXAMMSMMSMXSXSSXSXASMSMSSSMMSMASMMMMMMMAAAMAMSSSMMSMSMM
SAMSSMSXMMMASMMSAXAAXSMSXXMSMMMXMXMMAMXMAMMSMSMSSMMSXSMMMXMXMMMAASMXSASMSMAMAASXSMMXAAMMMAAXAAXXXXAMAMMXMMXAAXAAXXXMAMAXXSXMMMAMXSAAAXAXXMAS
SAMXAXMASASMSAASMMMXSXAMSSSXMAMMMXMXMAAMAMXXAXAAMAMXAMMXAAXAMXSMASAAMXMAMMXSSMSMXSAMXMSAMSXXXMSMMSMMASAAMSMMMSSMMMMSMSMMMMAXXMSMSMMSMMXMAMAM
SXMMMMMASASAMMMSMSSSMMXMAXSASXMAXXSAMSXMASXMSXMSSSMMAMAMAMSMSAMAMMMMSMMSMMAXXXMAXAMAAXSAMAMMSXSAAXXAAXXXMAXXAXAAASAAXAXAAMMMSXAXXXAAMAAXAMXM
XMXXXAMAMAMAMXXMAAMAAMSMXMMMMMSMSMSAMMMMSMMAMAAMAMXXMAAXXXAAMXMASXMAAMAAAMMSMMSSMSXMMXMXMASAAASMMMSMSSSXASMMXXXMSASMSSSSXSAAMSSSMMSSMSXMXSSS
SAMMSSMSSXSXMMSMMMSSMMAAAMAXMXAAAASXMMAXAAMAMMXMAMSMSMMMMMMXMASASAMXSMMSXMMXAMAMXMXMMSMMSASMMXMMMAAAXAMMMMAMMMSMMMAMAAAASXMMXAXAXXMAMMMSMAAS
AXAAXASAMXMAMAMMMMMMMSXXMXAMXMMXMXMMXXSSXSMSSSMMAMAAAASMXSXXXAMMSAMXXMMXASXSMMMSASASAXMAMASXXAAASXMSMAMAASAMAAAAMXSMMMMMMMASMMMMMMXMMXAAMMMM
MXSSSSMMSASAMASAAAAXMASASXSSSMXMSMSAXXXSAXAMAAXMASMSMMMAAAMMMMSMXAXASXASXMASAAXMXSAMMSSSMXMASXMMSMXMAASXMSXMMMSMMAMAAXAXAXMSASASAMAASMSMSASX
XXMAXMAXAASMSXXMSXSXMAXXMAXAXXAAAAMSSMAMSMMXSXMAASXXMXSMSMXAAMAMSSMASMMMAMAMAMXSAMXMMAMAMXAMXAXAXMASXMSXXMASMXMMMAXMSSXSSSXSAMXSASXSMAXXSASM
SAMXMSMMMAMXMXMXMMXAMAXMMSMAMSSSMSMAXMAMXMMMXAAMXSXXXAXXAXMSMSAMAAMMMAXSXSASAMAMASXXMSSMSASXSSMMMSASASXXMMAXMASAMMSMMMMMAMXMMMXSXMMAMMMXMXMA
SSSXMAMSMASASMMMAAXAMSSMAMMAMMAAXXMAXSXSAMAAXAMXXMASMSMSMSXAXSMMMSMSMSMAASASMMXSAMXSSMMXSAAASMAXAMXSMXMMMMMSMSMSAAAMAAAXASXMASMMMSSSMSSXMMMS
SAXAMAMXMMSAXAASMMSSMAAMAMMSSMSMMMMXXAAMMSMSSSSXXMAAAAAXASMMMMMSSXXMAAXMAMMMXSMMXXAXAAMAMMMSMSSMMMAMXSMMAAMAMAAAMSMSSSMSASASASAXAAXMAMAXMASA
MMMMSMSMMMMXMSAMAAAXMSSMMXAXXMMAMSASMMMMMAMXAAAMSMSMSSSMAMSAASASASAMSMMXXXMASAAASMSSSMMASAXMAAXSMMXSAMAMAMMASXSMXXAMAMMXMSXMASXMMMAMAMMASMSX
ASAMAAAMMAAXXAASMMMXAMXMAMSSMXSAMMASXAXMSASMMMMMXAXXAAXMXMXXXSMMAMXMXAMXSAMXXXMAXAAXAXXASASMMMXAXAMXXSAMXSSXXMAAXMXMSMSAMMXSXMXAXMSXSSXAMMMM
AXAMMSXSAMXMMSXMMAXASMSMMXAAAXSASMAMXXMASXMASAXAMXMMSMSXMASMXSXMMMMASASAMXXSMSSSMMMMXXSASAMMSSSSMMSMMSXSAMAMMSSMMXXAXASASAAMAMSSMXAAMMMXSAAM
MMSMAMAXASXMAMXAMXSXXAXASASMMMSAMMSSSMSMSASMMSSSSMXAMXMMSAMXAMAMMMSAMSAMXMASXAAXMAXSAXSAMXMXAAAXXAAAAXAMMSAAXAAAXSMMMMMMAAMMAXMASMMXMAXAMMSS
XAXMMMASMMXXSAMXMAAXMMMAMMXAMXMMMMMAMAAAMAMXAMMAAMMMMAAXMASMMXSMAAMAMMMSSSMSMMSMSAXMMMMAMSSSMMMMMMSSMMMMMSMSSMSMMXAAAXAXMASXMMSXMXSASMMMSSMM
MMSAXMASAAXXMMAMMSSXAAMSSMSSMAMMMSAAMSMSMSSMMSMSMMAMSSSXSAMMMAXSMXMSMXXAASAXAXAMMMMMAAMAMAAAMXAAXMAXAAMAXMAAXMAMXSSMSMXSXASASXSXAAMAMAAXMMAX
XASAMAASMMMMXSAMMMMMSXMXAAAMMXMXAAMXMAXAAAAASXXAXMAMAAXAAMMSMAMASMAMXXMMSMXSXMASAMASXSSSSMSMMXSMMMASXMSMSMMMMMAMXXAXMXMMMMSAMAXXMXXAXSMSXMXM
MMSSMMMXASXSASXSAAMXXMXSMMMSMSMMMSMSMXSMSMSXMMSSSSSMSSMSMMAXMMSAMMAMASAMXMAMAMXMAXMSAAAAAXMASMAMXMAXMAAAXXMASXMSMSSMMASAAMMMMMMXSAMSAXXXAMMS
MAMXXXMSXMAMASASXSMMMMMAMAXXMAAAAAAXXAMMXXMAAXAAMAAAXMAAAMXSAAMMMMASAAMXMMSSMSMSSMAXMMMMMMSAASAMSMSSMSMSMMMAMAXAASAXXAXXXMAXAAAAMAXXASASMMAX
MSSSMAMXSMXMXMAMAXXAASMMMASMSSSMSMSMMASASASMMMMSMSMXMMSXSMMMMXSXSSXMMSSXXAMAAXMAXMXMMXXASAMXMMXMXAXXXXXXAMMSMMSMSXMMMSSMSSMSSSSXMSMMAMMAXMMS
XAAAMMMAXXXSSMSMMMMSMMASXSXMAMAAAAAXXSMAMAXXAAXMAXXMXXMAMXAAMMXAMXMASAAXSASMMMMASMSMSASAMAMSXMMSMMMMMMASXMAXXXAMXMXXXMAXXAAXXMAMMAMMXMXMXXAM
MMSMMSAMXMMXSAAXMAXXXMAMXMXMASMMMSMXSAMSMSMSSMSMAMXAMAXMASXSSMMMMASMMMSMSASXSXMASMAAXASMSMMXAMXAAAXMAMAXASASMXMXSAMXXSXMSSMXSXXMSMSSSMASAMMS
XAAXXMAXAMMAMMMXSMSAMMSSSMASMSXXXAAXXMMAAMAAXAXASMMSAMSMMMMAAAAXXXSXAXAAMAMAMAMXSMMSMMMMAMSSMMSSSMSXSSMSXMASMXSAMSMMMMAAMXMAMMMXAXSAXSAMASAA
MMSSMSMSMSXXSASXMAMXMAXAXMASMXMMSMMMSSSMSMMMMMMMMAXAXXAXAMMSSSMMMXMXMSMSMXMMSAMAXAXMXAASMSXASAAMMXSMXAASAMAXAAMMXAMAAMSSMAMASAAMMXMMMMXSAMXS
MXAAXAAAAMMMMASXMSMSMXSAAMASXMAMAAMSAMXMXXXMMAAASXMSMSXSXXMAMAAXSXMAMAMAMMMXMASXSAMMSSXXXXXMMMSSMAMAMMMSAMAMMMSSSMSMXMAAMXSSXASXMASXSAMXASAM
XMASMMSMSMAAMAMMAMAAAXXAAMASAASXSSMMXXAMAMXMMSSMSSMAAXASMSMASMMMMAMSSMSAMAMSSMMXAMAMXMASXXAXAXXXMMSAXMASAMXXXXAAAASAMXSSMMSAMXMXSASASMASXMAS
MXMAMXAXAXXSSXSASMSMMMAMMMMSASXMAMAXSMMXAAMAAXXMMAMMMMMMAXSAMAMASXMMAMSMSSSMAAAMXSAMMXMAMXMSSSMMMASASMASXMAMMMMSMMMMMAMXAXMASMSXMASAMMMAXMAM
AAXXSSMSMXSAMAXMXAAAASAMAXXSXMMMMSXMXASXSSXMMSAMSSMMXSAMSMAMSSMAAMMSAMXXAMAMSMMMASASMXMSXSXAXAAAXMMMMMMMMXXAXXAXXAAAMXXSMMSAAASAMXMXXXXMXMAS
SASMXAAMMMAAMMMMMSMMMMASXSMXAMXXAXMXMMMAMXMMXSAMAMAAAMAMXAMXAXMMMXASASXMMSMMMXXMASAMXXXMASMMSMMMMAAAXASAMXXSXMMSSSXSAXAASAMSSMSXMASMMMMXASMS
MASASMXMAXSSMXAXAMMXSSMMAMMSMMXMMMAMAXMXMAMSAMXMXSXMAXAMMSXMASXMXMASAMMXAAAAMSMMMMASMSMMXMAXXXAMXSMMMMSASMMMXXAAMMAAAXSAMXMAMXMAMXSAAMASMSAM
MAMMXXAMMXXAMSSXMSMAXAXSMSMAAXMASASMSXMASAMMMMSAMXXMMSXSAXXSXSASAAMMAMSMSSSSSXMAMXAMMAMXMSSMSMMSAMAXSASAMAAXMMMSSMSMSMMAMXMSMSMSMMMMMSAMMSMS
MMMMMSSSSMSAMAXAAXMSSMMMAAMMXXAMXAMAMASASMSXSASMMMXXAAXMMSAMAMAMXMXMASAAMAAMAMXASMSMSASAAAMSXAAMASAMMXMAMSMSAMMAXXXAAXSAMAXASAAAAAAXXMASASXX
AMAXMAAAAMSAMASMMMMMAAAMSMSMMSSMMSMMMAMASAXAMMSAAAMMMMSXMMAMXMMMSMMXXMASMMMMSAMSAMXAXAXXMMSAMMMMXMMMSXSSMMMAMXMSSXMXMAXMMMSXXMSMMMSSXSAMXSMM
ASASMMMSMMSAMXSAXXXXMMMXAAXAXAAAAXAXMMMXMMMXMASXMMSAASXMSSMSMSAAAXAXSAMXXAMAXAMXASMMMAMXMXXMSXSXAAAXXMAMXXMASMMMMAXAXMXSAMXXMXAXXMXMASXSMSXA
XMASAXXAXXSAMXSXMAMSASXXAMSMMSSMMMAMXMMAMXMXMXMAMASXSXAAMAAAAXMMMSSMSAMXSXSAMAMSASAXXMAXMAMXAASXSMMXMASMMXMAMAAAXXSMSMAMAMAASAAAMSMSXSAMXMMX
XMXSAMSSSMXXMAXAMAASAMMXXMAXAAXXSAMMAXSMSAMASAXAMXSMMMSSSMMMSMMSAAMAMXMASMMMSXMMASXMMSMSASXMMXMAMXXMSAMAXSMMSMSXSAMXAMMSMMMXAAAMSAASAMMMASMM
XXAMAMAAAMXXMSSXMXMMSMMMMSASMXSASAASXMXMAASAMMXSAMXAAAMMXXSAMASAMXSSMSMAMXAAAMXMXMMMAAAMXXAMXMMAMMMMAAXXMMAASXMMSASXMXMAMSSSMXSXMMMMAMASMSAS
SMXSMMXSAMMAAXMASMAXAXAAXXXXAAAAXXMXXXMAXMMXSXAMAXMSMSXSXMMAMXMMMMAAASMMMSXSMXMAMAAMMMSMASMMAMMAXAAXSSMSMXMXMASASAMMSAMMAMAAXAMAMXSSXMASXSAM
MAXMMAMXAAMMSMSAMSMMMSSSSSSMSMMSMSMSSSSXSAMXAMSSMSAMAMMMASXSMSXXXAMMMMASAAMXAXSAMMMXAAAMXXASASMMSXXMAXAAAXMAMMMMMAMAMXSMAMXMMSXMMAAMMMASXMAM
MSMMAMMMMMXAAXMMXAXAXXAAAAXAMXXAXAAAAXAASAMXMAMAAMAMAMASMMAXAMXMAMXAXXAMMSAMXMSASXXSMSMSXMMMASXAAASMMMSMSMSASXASAMMSSSXMASMSMMASMMSSSMMSMXAA
AAAXXMASXSMSSSSMSXSMMMMMMMMSMMMMSXMMSMSMXMXXXSXMXMXMXSXMXXXMAMXMASMSSMSSXMXSXASAMMXAMXMXXAXMXMMMMXMAMXXAXAXAXMAXAASXMMASXMXXASAMMXAAXAMXASMS
SSSMSMASAAAXMMMASMSASASMSMAMAMMXSMMXXAMXAMSMMMXMASXMAMMMMMMSXMXSAAAAAMAMXXAMMMMAMXMMMSASMSMSMMASXMSMMAMMMMMMMSMSSMMASMMMMMSMMMMMSMMSSSMSMMAA
MAAAXMAMMMMMAAMMMASASASAAMASAMAAMASAMSSSXSAAAXASXSAMXSAAAAMMMAAMAMMMSMASMMXSAASAMAAXXMAMMAAAASASAAAAMASAAAAAAAXXAASAMXAAAAAAAXAAAXAAMAMXAMXM
MSMMMMMSAMXSSMSXMMMXMXMMMSMSMSXXSSMXSAMXSSMSMSMSASMMSSMSSSXAXMXSXMASMXMSXXASXMSXMAMSAMXMSXSSXMSSMMMASMSXSSSMSSSSSMMMSXSSSSSSMSMSSSMXSSMSMMAX
EOF

solve TEST_INPUT

solve INPUT
