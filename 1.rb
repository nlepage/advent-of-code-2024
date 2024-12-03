def solve(input)
  lines = input.split("\n")

  left,right = lines.map{ |l| l.split.map(&:to_i) }.transpose
  
  p left.sort.zip(right.sort).map{ |l,r| (r-l).abs }.sum

  p left.map{ |n| n * right.count(n) }.sum
end

TEST_INPUT = <<~EOF
3   4
4   3
2   5
1   3
3   9
3   3
EOF

INPUT = <<~EOF
35446   18696
46314   66062
33933   83974
83974   34443
98207   12657
38488   57125
95930   81859
52767   12657
16477   53659
14481   84757
29083   51122
36158   15438
61387   10295
76932   66328
36700   83181
90500   70317
55528   55820
31179   94554
22822   16886
23069   99080
69000   50666
91611   49688
10965   12657
62470   27096
38922   83974
88317   67082
49184   78816
46731   90213
56390   89965
67724   21120
60777   88500
38607   91051
89620   42599
19492   59958
12399   89965
14491   21092
89224   65224
92053   89616
61752   33001
14662   46961
62308   99609
63106   37570
98323   89620
10130   47868
44468   92294
55055   99080
21162   23460
62629   83614
64760   76835
59948   58492
93112   81859
19027   67250
68050   27547
39607   27547
72923   77124
59390   45817
33001   47868
70458   64427
36441   47868
44963   70577
56327   83974
35920   89031
56574   16410
19886   20797
10538   56032
43629   89965
40166   54408
71819   87037
71239   58805
84091   36969
27282   83974
61675   83974
13092   65566
22564   69172
73337   83623
65255   88498
14204   49627
90941   12657
12650   65455
39913   16886
91204   42662
12353   24980
86940   43602
45417   86117
93805   13685
86595   32060
95504   49974
49450   18696
54656   82794
24239   65070
39200   94275
45741   65455
86169   41093
30646   56972
28947   45593
27981   18232
74967   83592
28791   27193
58805   69918
41082   52767
49770   52767
40558   92562
38248   72945
51400   16886
20599   11817
77640   81133
54049   56972
82155   36807
88848   49688
74986   21092
84534   83372
52277   53938
27375   46406
82985   44993
44699   83974
56937   87037
77717   49519
97383   12353
94620   17706
93133   79684
63717   33001
13006   56032
20078   55429
68979   18696
97191   84071
47911   62971
48256   56784
34443   47868
44941   56972
43750   83153
16717   42999
36163   79265
29877   82188
54069   59608
21897   70982
46002   35871
47632   28298
92150   34443
47440   90606
21000   89334
22797   91051
67853   81395
30016   59612
65558   65566
46885   12353
49714   12353
40300   27547
97130   33789
89917   70893
99566   49688
53392   56972
92478   44580
69059   12657
88594   66111
25017   51845
66050   49129
18086   33001
44548   56032
91368   26310
90745   82691
50489   65566
29928   45682
81859   89620
74633   95869
98553   47868
80866   49688
24016   20910
36650   33001
19561   74850
63484   49688
58451   18696
29016   32060
54718   25325
89003   33001
68471   11145
88206   89620
13290   66328
86949   22014
77758   88623
75063   96681
99425   31778
71300   62538
88500   11195
78917   56972
43065   88068
33189   89088
46705   83036
56972   50663
24844   91051
57908   63316
15446   88452
76421   36179
98232   25703
37640   49688
35383   44539
11291   12353
62140   83592
55579   88733
83570   87934
76450   35834
84820   47091
24416   78402
45763   65455
82938   66922
65397   65566
45162   18361
71395   72305
72027   97029
85465   28881
32751   65455
65455   80742
79640   10727
88492   84005
66028   32752
23677   43498
22716   26101
62036   87090
18882   82877
24085   91061
97952   56032
16125   12353
69534   44480
42997   33448
45250   68695
84290   92562
22335   32582
47550   99080
36928   73869
40790   11220
41540   71545
16448   67875
44580   45593
35045   70157
69798   63807
50519   97965
69580   16886
87702   24341
57895   58808
20766   27547
74455   59612
33358   83592
80944   78627
71806   29266
88258   82877
21771   64556
88011   25173
95793   49627
95847   45593
56747   12657
32448   12657
93453   50250
72594   74557
52172   18099
93959   70300
74332   38126
79878   67746
49680   54928
18265   33001
95331   59612
18366   33001
25504   88500
62474   60901
31197   29540
66986   49688
63340   88500
69519   27915
21052   52553
72184   27193
43404   49627
95052   59327
27977   83614
13673   18696
13363   27547
82059   47868
52928   82877
55266   25800
55292   89620
66838   81751
85014   62704
18772   89391
99322   39583
68363   58608
45148   58708
63006   27193
92687   12754
55913   75671
45593   65455
79018   51305
87110   56230
66328   14246
54561   53594
56406   14740
95001   49947
12373   81859
65064   16886
17403   75896
58690   53427
50959   27547
40939   52963
50275   47946
73990   32060
39728   49688
64531   74946
44868   56972
72719   27906
35784   16310
13911   26147
45218   21092
27025   54743
64719   65566
22135   12657
13725   71262
16787   49149
26004   27547
83956   25800
20869   65750
92705   49627
41237   33001
47868   54678
46965   44772
76833   67617
10593   96338
91447   12858
41369   18696
88036   97875
56077   40100
83258   73796
17955   99080
47587   12353
71731   21884
43926   76598
26878   21142
85135   21092
13199   91051
55583   72621
72584   63423
10908   82877
59612   45593
72725   95288
22111   82877
15422   16886
51152   97377
14804   61202
62625   53427
89653   38262
13230   39503
83705   39416
88216   34340
30601   23296
86040   70921
76367   32060
17566   62842
49688   26555
51987   27192
99083   16886
50529   28284
18618   92562
49357   27193
83692   27547
34017   12353
34588   65455
79808   56032
76557   83614
52422   73787
99664   83974
23712   89620
10628   79497
35405   89633
55143   97586
97421   13687
17759   32060
94690   46885
40501   39940
41037   85460
70591   40719
64400   83974
25588   12353
92616   83974
65267   12288
21298   82152
21216   24498
83830   95148
69200   34443
92744   83974
84255   72646
60019   33001
72406   89620
80749   83614
81952   73514
80454   27193
32161   15624
96805   12657
87229   45593
52706   21688
54224   33221
59272   81859
39664   89965
52726   88500
17451   53746
53896   58280
72032   56972
41654   83606
45801   76761
59531   56972
69619   65455
47931   88500
37408   15916
46419   27677
24027   99080
87213   89400
59190   71907
91014   77947
20262   52969
99705   17001
77899   98899
66940   12657
96845   16886
85833   89620
24005   72223
70935   48677
80570   92562
14398   81859
34541   83183
28018   92562
87037   90231
71966   34443
46070   83974
28730   56032
37205   65566
78756   83974
92078   88687
84234   22235
65644   83974
69979   57474
26206   40074
10787   70635
25443   81859
16577   86943
83988   11918
12284   12657
57347   16886
25269   45386
26028   52805
28804   77340
50690   72129
79036   63115
70738   71491
66916   96652
81977   46885
43130   58805
97899   98026
50454   97303
77142   33793
20238   99451
25279   49627
37235   83614
49627   84495
40512   15742
84237   18675
57852   65767
60277   53427
60816   99080
48621   62202
48990   65455
90883   47035
32060   33001
47930   56032
53524   55589
76420   16886
12331   72983
93348   48516
21092   40456
80416   62693
18172   66930
83267   47868
56035   31836
19129   12657
31465   83592
64173   33001
74397   70918
20717   12819
51944   72328
71053   27547
80370   56032
68857   90951
48914   33001
41820   53931
31445   99080
12669   38918
79174   56972
45196   22048
43488   27193
49986   39514
65806   85882
48018   89620
86144   92562
95852   58805
47095   89620
96313   45593
39688   86998
89088   56972
10994   27193
44290   45593
32871   49668
74126   69396
59913   35109
37148   83974
56032   24108
92348   23837
76049   45593
28805   74542
35070   46272
40283   47868
32870   21092
87890   11410
85129   84836
89021   23016
54444   52767
60250   15651
82877   99080
13101   66125
95310   44178
99602   87037
39771   61194
92562   67527
26053   81299
99211   52767
31519   14876
66988   89620
55719   34142
47519   37927
81355   67645
64580   83371
53953   40028
28575   23345
88211   96106
25538   33194
35298   66440
11466   12353
33575   18696
86250   59305
84467   53562
59023   91051
81764   58973
80503   18696
73651   65455
74173   65566
59081   38453
54695   27547
25202   43565
90138   53680
87761   98899
76616   26486
98411   12657
87945   89620
69634   64725
94813   92562
64622   21092
46511   18696
49212   70971
34375   23916
64884   81859
94136   95813
89737   59612
45383   16739
60780   34100
60956   56032
27402   25216
61698   78097
77163   74327
30740   83974
78975   99080
34208   88571
74233   14179
95918   47868
74949   65566
41203   47868
27671   56032
38515   20386
82734   92813
70727   25800
10326   33001
83563   45593
46938   58588
43092   65566
96771   57693
32365   21390
65514   25800
21151   91810
53822   66328
89965   49039
97207   20005
18794   23172
85061   82877
29500   93001
86025   29962
18550   74091
92402   69893
58049   16886
47165   82877
40002   81859
82066   71414
99593   12657
95278   82877
23474   33508
26508   32060
13412   78711
58286   35717
79549   25448
59275   87684
59102   83592
59475   65455
71391   49481
64011   27193
34907   27193
96020   65566
32676   48353
82228   64987
85683   33001
84073   49627
89790   91054
79448   42717
57726   66328
30683   65566
27124   74353
13404   65566
47973   32110
75389   32060
39880   90141
47176   25763
77298   75035
36334   32060
55391   40175
75215   50282
89669   27719
36393   33001
79118   21092
81448   47868
51834   49990
40739   49688
52754   56972
35389   36568
31791   30926
44345   27193
11231   58125
21968   32060
78789   12353
81898   62528
22004   84635
50202   69626
83592   51107
58853   79346
42190   68523
45830   99080
81738   12353
99265   99469
90691   38910
38908   20889
20275   89965
24933   24939
71243   83614
67641   13684
63940   34940
16484   46405
95114   80965
52206   65455
45310   68999
76892   94531
71763   25077
28803   25055
19132   65455
62482   16017
20185   65455
53459   47868
86711   18696
25418   70965
41208   97960
18696   38086
25923   21953
90443   92562
84272   27547
58778   45593
83614   10136
46699   32890
76064   27547
99080   28452
18497   12353
60862   77196
19752   27547
22338   53427
66112   32195
41917   82202
50594   45593
15550   96715
61435   88975
96294   32060
47560   77044
60387   49627
76943   45593
78435   87312
57089   89620
97691   18696
30869   76316
51101   17127
89100   49688
28552   99080
50599   21092
62850   89620
97312   27547
81531   45593
69183   54914
88793   56972
48548   45593
66705   56032
71169   16358
55885   12353
55064   66328
59988   38915
89486   45971
66564   62229
21432   73083
69247   49688
15787   12657
91085   82877
14618   12353
99031   46480
80969   91051
68503   18696
89919   12657
97125   81859
36492   34656
50873   18696
50741   27547
27193   99250
13260   89620
70660   50852
23872   40621
23133   34336
18937   49627
84631   18350
31466   97019
82842   70754
96642   16614
99278   21092
37578   44363
87003   59612
43407   43149
73286   92643
45369   18696
60219   47988
92605   12811
80646   91257
29493   25800
64968   16886
67454   56032
39669   52921
45812   92562
98524   34245
68102   13668
33914   59590
90204   20381
78331   21373
41990   17121
98264   13737
12657   97505
14876   12560
86663   13560
81960   46045
94521   12578
84699   89846
65933   89620
69417   46940
77051   30362
75075   44987
33494   56972
49618   81859
71385   41628
72195   47868
62025   65455
23253   49627
70062   81859
14577   16886
72180   61232
92457   12657
91879   53427
49809   97285
73214   49688
63136   65455
25107   99080
77516   18306
84079   45956
68470   12935
80077   35901
33487   93929
98439   81859
25106   49627
29578   21746
41763   49627
38888   82877
21105   59612
27547   85476
34649   96912
98652   37966
26548   51315
91140   70379
88522   66328
18801   81859
88360   27197
54575   33001
54004   83017
50564   99080
19887   42385
65566   93192
13908   81859
38021   51863
53431   65566
63143   49688
77152   16886
95334   94999
99112   84555
22226   47868
81497   25800
56613   89560
32899   66913
73926   32060
14710   59039
81998   56498
51537   23626
92298   72999
61627   48753
25800   33001
89153   35814
15490   59612
98839   49749
88591   27547
47330   83974
94242   38771
30493   25606
47111   97620
76006   83974
88435   49627
12581   14185
52999   82877
64534   46741
70617   18696
78842   89208
72607   51926
44479   91090
32783   26114
27725   65566
71384   17667
75007   81596
25465   98911
97702   81141
87869   32060
85114   81859
67686   97990
22260   12353
67159   32060
97547   16886
26163   79445
90733   83974
62958   47018
87531   53073
28421   82286
31349   92110
62113   17868
59754   42706
82004   12353
69805   89458
73669   77228
36269   97413
35228   27547
38938   12657
88675   89620
90579   71041
89858   83974
19686   18696
16625   49627
91432   81859
17607   83974
89530   45593
40107   56032
28095   41567
93573   70856
85006   18696
19091   45593
82765   12657
20545   24253
24106   49627
60438   88622
27926   16886
97985   89965
79204   89810
91051   83614
75382   82877
50290   96422
66045   81859
61679   35777
46984   56988
18043   21092
53300   90453
57214   78410
11949   81859
45225   22918
82542   65566
11498   27547
44155   56972
97659   13416
64945   53035
10456   52940
66710   16886
52752   68386
21492   63909
10804   70233
53427   70763
81459   89620
24486   29799
94315   88192
99345   81859
26426   16886
59747   65455
78335   28188
76856   55257
38024   89620
76867   76062
25261   27547
21948   44580
25796   49407
26541   34513
85517   29546
51634   23929
16886   98484
94563   31195
94244   82759
19517   83614
15629   47203
13661   64125
54946   63802
69496   18696
10488   32505
92729   23426
28136   32060
55489   83964
34355   47868
75542   76179
70632   99080
29904   71317
73989   53368
86241   48586
82353   46831
78028   53147
92984   83641
55747   21015
17389   18696
94992   29411
69555   88500
66820   26798
96784   92681
19019   99080
67383   42448
64708   12353
20616   92061
22213   89965
34850   12996
99572   36736
76670   92372
11930   91013
18321   99080
42025   57447
99887   75845
95958   48242
44579   18696
79387   34443
82753   27308
93967   52098
90819   66336
38322   35403
10019   12353
78459   37576
69905   16060
14796   98743
14487   17417
79979   66300
59836   12353
37308   56032
63835   88500
30048   79432
71914   99080
76352   56972
74621   56972
33804   98899
23449   33001
99868   27547
57457   83513
44296   36718
43642   99921
49243   90701
28205   27193
98899   19172
EOF

solve TEST_INPUT
solve INPUT
