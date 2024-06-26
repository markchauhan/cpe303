`timescale 1ns/10ps
// Generated by Cadence Genus(TM) Synthesis Solution 18.14-s037_1
// Generated on: May 23 2024 18:08:45 CDT (May 23 2024 23:08:45 UTC)

// Verification Directory fv/alu_conv 

module alu_conv(a0_mux, a1_mux, a_sel, b, ctrl, out);
  input [7:0] a0_mux, a1_mux, b;
  input a_sel;
  input [2:0] ctrl;
  output [7:0] out;
  wire [7:0] a0_mux, a1_mux, b;
  wire a_sel;
  wire [2:0] ctrl;
  wire [7:0] out;
  wire n_0, n_1, n_2, n_3, n_4, n_5, n_6, n_7;
  wire n_8, n_9, n_10, n_11, n_12, n_13, n_14, n_15;
  wire n_16, n_17, n_18, n_19, n_20, n_21, n_22, n_23;
  wire n_24, n_25, n_26, n_27, n_28, n_29, n_30, n_31;
  wire n_32, n_33, n_34, n_35, n_36, n_37, n_38, n_39;
  wire n_40, n_41, n_42, n_43, n_44, n_45, n_46, n_47;
  wire n_48, n_49, n_50, n_51, n_52, n_53, n_54, n_55;
  wire n_56, n_57, n_58, n_59, n_60, n_61, n_62, n_63;
  wire n_64, n_65, n_66, n_67, n_68, n_69, n_70, n_71;
  wire n_72, n_73, n_74, n_75, n_76, n_77, n_78, n_79;
  wire n_80, n_81, n_82, n_83, n_84, n_85, n_86, n_87;
  wire n_88, n_89, n_90, n_91, n_92, n_93, n_95, n_96;
  wire n_97, n_98, n_99, n_100, n_101, n_102, n_103, n_104;
  wire n_106, n_107, n_108, n_109, n_110, n_111, n_112, n_114;
  wire n_115, n_116, n_117, n_119, n_120, n_121, n_122, n_123;
  wire n_124, n_125, n_126, n_127, n_128, n_129, n_130, n_131;
  wire n_132, n_133, n_134, n_135, n_136, n_137, n_138, n_139;
  wire n_140, n_141, n_144, n_145, n_146, n_147, n_148, n_149;
  wire n_188, n_196, n_201, n_206, n_211, n_216, n_221, n_226;
  wire n_231, n_239, n_252, n_265;
  OAI211_X1 g4630__8780(.A (n_149), .B (n_54), .C1 (n_147), .C2
       (n_116), .ZN (out[7]));
  OAI221_X1 g4631__4296(.A (n_140), .B1 (n_148), .B2 (n_141), .C1
       (n_139), .C2 (n_135), .ZN (out[6]));
  OAI221_X1 g4632__3772(.A (n_74), .B1 (n_145), .B2 (n_146), .C1
       (n_144), .C2 (n_51), .ZN (n_149));
  AOI221_X1 g4634__1474(.A (n_41), .B1 (n_134), .B2 (n_120), .C1
       (n_137), .C2 (n_119), .ZN (n_148));
  XOR2_X1 g4635__4547(.A (n_138), .B (n_146), .Z (n_147));
  AOI21_X1 g4633__9682(.A (n_18), .B1 (n_144), .B2 (n_0), .ZN (n_145));
  OAI211_X1 g4636__2683(.A (n_128), .B (n_129), .C1 (n_132), .C2
       (n_52), .ZN (out[5]));
  OAI221_X1 g4641__1309(.A (n_114), .B1 (n_121), .B2 (n_141), .C1
       (n_108), .C2 (n_109), .ZN (out[4]));
  AOI221_X1 g4640__6877(.A (n_125), .B1 (n_133), .B2 (n_127), .C1
       (n_126), .C2 (n_59), .ZN (n_140));
  AOI21_X1 g4637__2900(.A (n_131), .B1 (n_122), .B2 (n_130), .ZN
       (n_139));
  OAI21_X1 g4639__2391(.A (n_29), .B1 (n_136), .B2 (n_44), .ZN (n_138));
  XNOR2_X1 g4642__7675(.A (n_136), .B (n_135), .ZN (n_137));
  AOI21_X1 g4638__7118(.A (n_134), .B1 (n_124), .B2 (n_133), .ZN
       (n_144));
  AOI221_X1 g4644__8757(.A (n_131), .B1 (n_115), .B2 (n_130), .C1
       (n_123), .C2 (n_99), .ZN (n_132));
  AOI21_X1 g4645__1786(.A (n_117), .B1 (n_61), .B2 (n_188), .ZN
       (n_129));
  AOI221_X1 g4648__5953(.A (n_112), .B1 (n_8), .B2 (n_127), .C1
       (n_126), .C2 (n_36), .ZN (n_128));
  AND3_X1 g4643__5703(.A1 (n_124), .A2 (n_135), .A3 (n_101), .ZN
       (n_125));
  AOI21_X1 g4646__7114(.A (n_22), .B1 (n_123), .B2 (n_15), .ZN (n_136));
  INV_X1 g4647(.A (n_124), .ZN (n_122));
  AOI221_X1 g4649__5266(.A (n_37), .B1 (n_107), .B2 (n_120), .C1
       (n_111), .C2 (n_119), .ZN (n_121));
  OAI221_X1 g4651__2250(.A (n_104), .B1 (n_100), .B2 (n_38), .C1
       (n_98), .C2 (n_188), .ZN (out[3]));
  NOR3_X1 g4652__6083(.A1 (n_123), .A2 (n_39), .A3 (n_116), .ZN
       (n_117));
  OAI21_X1 g4650__2703(.A (n_60), .B1 (n_115), .B2 (n_7), .ZN (n_124));
  AOI221_X1 g4657__5795(.A (n_103), .B1 (n_106), .B2 (n_127), .C1
       (n_126), .C2 (n_55), .ZN (n_114));
  OAI221_X1 g4658__7344(.A (n_91), .B1 (n_95), .B2 (n_141), .C1 (n_87),
       .C2 (n_85), .ZN (out[2]));
  NOR2_X1 g4653__1840(.A1 (n_115), .A2 (n_53), .ZN (n_112));
  OAI21_X1 g4656__5019(.A (n_33), .B1 (n_110), .B2 (n_43), .ZN (n_123));
  XNOR2_X1 g4659__1857(.A (n_110), .B (n_109), .ZN (n_111));
  AOI21_X1 g4654__9906(.A (n_131), .B1 (n_96), .B2 (n_130), .ZN
       (n_108));
  AOI21_X1 g4655__8780(.A (n_107), .B1 (n_102), .B2 (n_106), .ZN
       (n_115));
  OAI221_X1 g4661__4296(.A (n_81), .B1 (n_88), .B2 (n_188), .C1 (n_69),
       .C2 (n_116), .ZN (out[1]));
  AOI211_X1 g4663__3772(.A (n_56), .B (n_92), .C1 (n_10), .C2 (n_120),
       .ZN (n_104));
  AND3_X1 g4660__1474(.A1 (n_102), .A2 (n_109), .A3 (n_101), .ZN
       (n_103));
  AOI221_X1 g4662__4547(.A (n_131), .B1 (n_93), .B2 (n_130), .C1
       (n_97), .C2 (n_99), .ZN (n_100));
  AOI221_X1 g4666__9682(.A (n_90), .B1 (n_30), .B2 (n_73), .C1 (n_12),
       .C2 (n_120), .ZN (n_98));
  AOI21_X1 g4664__2683(.A (n_6), .B1 (n_97), .B2 (n_14), .ZN (n_110));
  INV_X1 g4665(.A (n_102), .ZN (n_96));
  AOI221_X1 g4667__1309(.A (n_31), .B1 (n_80), .B2 (n_120), .C1 (n_86),
       .C2 (n_119), .ZN (n_95));
  OAI211_X1 g4672__6877(.A (n_82), .B (n_72), .C1 (n_49), .C2 (n_76),
       .ZN (out[0]));
  OAI21_X1 g4668__2900(.A (n_9), .B1 (n_93), .B2 (n_11), .ZN (n_102));
  NOR3_X1 g4669__2391(.A1 (n_97), .A2 (n_89), .A3 (n_116), .ZN (n_92));
  AOI221_X1 g4675__7675(.A (n_83), .B1 (n_126), .B2 (n_75), .C1
       (n_127), .C2 (n_78), .ZN (n_91));
  NOR3_X1 g4670__7118(.A1 (n_93), .A2 (n_89), .A3 (n_48), .ZN (n_90));
  AOI221_X1 g4671__8757(.A (n_50), .B1 (n_71), .B2 (n_68), .C1 (n_62),
       .C2 (n_201), .ZN (n_88));
  AOI21_X1 g4673__1786(.A (n_131), .B1 (n_70), .B2 (n_130), .ZN (n_87));
  XNOR2_X1 g4676__5953(.A (n_84), .B (n_85), .ZN (n_86));
  OAI21_X1 g4674__5703(.A (n_35), .B1 (n_84), .B2 (n_42), .ZN (n_97));
  AND3_X1 g4678__7114(.A1 (n_79), .A2 (n_85), .A3 (n_101), .ZN (n_83));
  OAI22_X1 g4679__5266(.A1 (n_46), .A2 (n_127), .B1 (n_64), .B2
       (n_231), .ZN (n_82));
  INV_X1 g4687(.A (n_77), .ZN (n_81));
  AOI21_X1 g4677__2250(.A (n_80), .B1 (n_79), .B2 (n_78), .ZN (n_93));
  OAI222_X1 g4688__6083(.A1 (n_47), .A2 (n_76), .B1 (n_65), .B2 (n_75),
       .C1 (n_63), .C2 (n_19), .ZN (n_77));
  AOI211_X1 g4690__2703(.A (n_188), .B (n_27), .C1 (n_57), .C2 (n_73),
       .ZN (n_74));
  INV_X1 g4702(.A (n_66), .ZN (n_72));
  OAI21_X1 g4684__5795(.A (n_58), .B1 (n_45), .B2 (n_201), .ZN (n_71));
  INV_X1 g4681(.A (n_79), .ZN (n_70));
  XOR2_X1 g4680__7344(.A (n_68), .B (n_67), .Z (n_69));
  AOI21_X1 g4686__1840(.A (n_23), .B1 (n_67), .B2 (n_25), .ZN (n_84));
  OAI22_X1 g4703__5019(.A1 (n_65), .A2 (n_64), .B1 (n_63), .B2 (n_24),
       .ZN (n_66));
  MUX2_X1 g4692__1857(.A (n_17), .B (n_64), .S (n_221), .Z (n_62));
  OAI222_X1 g4691__9906(.A1 (n_60), .A2 (n_76), .B1 (n_59), .B2 (n_58),
       .C1 (n_57), .C2 (n_40), .ZN (n_61));
  OAI22_X1 g4704__8780(.A1 (n_65), .A2 (n_55), .B1 (n_20), .B2 (n_63),
       .ZN (n_56));
  MUX2_X1 g4708__4296(.A (n_65), .B (n_5), .S (n_26), .Z (n_54));
  NAND2_X1 g4683__3772(.A1 (n_52), .A2 (n_101), .ZN (n_53));
  NAND2_X1 g4682__1474(.A1 (n_146), .A2 (n_119), .ZN (n_51));
  NOR3_X1 g4689__4547(.A1 (n_68), .A2 (n_49), .A3 (n_48), .ZN (n_50));
  OAI21_X1 g4685__9682(.A (n_47), .B1 (n_16), .B2 (n_49), .ZN (n_79));
  AOI21_X1 g4695__2683(.A (n_45), .B1 (n_1), .B2 (n_48), .ZN (n_46));
  NOR2_X1 g4698__1309(.A1 (n_28), .A2 (n_44), .ZN (n_135));
  NOR2_X1 g4700__6877(.A1 (n_32), .A2 (n_43), .ZN (n_109));
  NOR2_X1 g4701__2900(.A1 (n_34), .A2 (n_42), .ZN (n_85));
  OAI22_X1 g4705__2391(.A1 (n_4), .A2 (n_58), .B1 (n_3), .B2 (n_40),
       .ZN (n_41));
  INV_X1 g4693(.A (n_52), .ZN (n_39));
  INV_X1 g4694(.A (n_89), .ZN (n_38));
  OAI22_X1 g4706__7675(.A1 (n_36), .A2 (n_58), .B1 (n_21), .B2 (n_40),
       .ZN (n_37));
  INV_X1 g4711(.A (n_34), .ZN (n_35));
  INV_X1 g4710(.A (n_32), .ZN (n_33));
  OAI22_X1 g4707__7118(.A1 (n_30), .A2 (n_58), .B1 (n_13), .B2 (n_40),
       .ZN (n_31));
  INV_X1 g4712(.A (n_28), .ZN (n_29));
  NOR3_X1 g4731__8757(.A1 (n_26), .A2 (n_76), .A3 (n_226), .ZN (n_27));
  NAND2_X1 g4713__1786(.A1 (n_24), .A2 (n_216), .ZN (n_25));
  NOR2_X1 g4718__5953(.A1 (n_24), .A2 (n_216), .ZN (n_23));
  NOR2_X1 g4717__5703(.A1 (n_21), .A2 (n_206), .ZN (n_22));
  NOR2_X1 g4714__7114(.A1 (n_20), .A2 (n_265), .ZN (n_32));
  AND2_X1 g4715__5266(.A1 (n_57), .A2 (n_252), .ZN (n_44));
  AND2_X1 g4716__2250(.A1 (n_19), .A2 (n_239), .ZN (n_42));
  XNOR2_X1 g4696__6083(.A (n_59), .B (n_206), .ZN (n_52));
  XOR2_X1 g4709__2703(.A (n_26), .B (n_226), .Z (n_146));
  XOR2_X1 g4697__5795(.A (n_55), .B (n_211), .Z (n_89));
  XOR2_X1 g4699__7344(.A (n_75), .B (n_216), .Z (n_68));
  NAND2_X1 g4748__1840(.A1 (n_18), .A2 (n_188), .ZN (n_65));
  NOR2_X1 g4752__5019(.A1 (n_76), .A2 (n_188), .ZN (n_127));
  INV_X1 g4728(.A (n_16), .ZN (n_17));
  NAND2_X1 g4724__1857(.A1 (n_21), .A2 (n_206), .ZN (n_15));
  NAND2_X1 g4719__9906(.A1 (n_13), .A2 (n_211), .ZN (n_14));
  INV_X1 g4726(.A (n_11), .ZN (n_12));
  INV_X1 g4727(.A (n_9), .ZN (n_10));
  INV_X1 g4729(.A (n_7), .ZN (n_8));
  NOR2_X1 g4721__8780(.A1 (n_13), .A2 (n_211), .ZN (n_6));
  AND2_X1 g4722__4296(.A1 (n_20), .A2 (n_265), .ZN (n_43));
  NOR2_X1 g4723__3772(.A1 (n_57), .A2 (n_252), .ZN (n_28));
  NOR2_X1 g4720__1474(.A1 (n_19), .A2 (n_239), .ZN (n_34));
  INV_X1 g4730(.A (n_49), .ZN (n_45));
  NAND2_X1 g4725__4547(.A1 (n_2), .A2 (n_231), .ZN (n_67));
  NAND2_X1 g4746__9682(.A1 (n_120), .A2 (n_226), .ZN (n_5));
  NAND2_X1 g4743__2683(.A1 (n_75), .A2 (n_216), .ZN (n_47));
  INV_X1 g4745(.A (n_116), .ZN (n_99));
  OR2_X1 g4732__1309(.A1 (n_4), .A2 (n_252), .ZN (n_133));
  NOR2_X1 g4737__6877(.A1 (n_75), .A2 (n_216), .ZN (n_16));
  NAND2_X1 g4747__2900(.A1 (n_73), .A2 (n_188), .ZN (n_63));
  NOR2_X1 g4749__2391(.A1 (n_48), .A2 (n_188), .ZN (n_101));
  NAND2_X1 g4744__7675(.A1 (n_64), .A2 (n_231), .ZN (n_49));
  NOR2_X1 g4751__7118(.A1 (n_58), .A2 (n_188), .ZN (n_131));
  NOR2_X1 g4742__8757(.A1 (n_59), .A2 (n_206), .ZN (n_7));
  NOR2_X1 g4734__1786(.A1 (n_55), .A2 (n_211), .ZN (n_11));
  NAND2_X1 g4735__5953(.A1 (n_59), .A2 (n_206), .ZN (n_60));
  NAND2_X1 g4736__5703(.A1 (n_55), .A2 (n_211), .ZN (n_9));
  OR2_X1 g4738__7114(.A1 (n_36), .A2 (n_265), .ZN (n_106));
  AND2_X1 g4739__5266(.A1 (n_36), .A2 (n_265), .ZN (n_107));
  AND2_X1 g4740__2250(.A1 (n_30), .A2 (n_239), .ZN (n_80));
  OR2_X1 g4741__6083(.A1 (n_30), .A2 (n_239), .ZN (n_78));
  AND2_X1 g4733__2703(.A1 (n_4), .A2 (n_252), .ZN (n_134));
  INV_X1 g4755(.A (n_26), .ZN (n_3));
  INV_X1 g4754(.A (n_64), .ZN (n_2));
  INV_X1 g4770(.A (n_58), .ZN (n_18));
  INV_X1 g4756(.A (n_36), .ZN (n_20));
  INV_X1 g4759(.A (n_30), .ZN (n_19));
  INV_X1 g4771(.A (n_120), .ZN (n_76));
  INV_X1 g4761(.A (n_75), .ZN (n_24));
  INV_X1 g4757(.A (n_59), .ZN (n_21));
  INV_X1 g4760(.A (n_55), .ZN (n_13));
  INV_X1 g4758(.A (n_4), .ZN (n_57));
  NOR2_X1 g4750__5795(.A1 (n_40), .A2 (n_188), .ZN (n_126));
  NAND2_X1 g4753__7344(.A1 (n_119), .A2 (n_188), .ZN (n_116));
  MUX2_X1 g4763__1840(.A (a0_mux[7]), .B (a1_mux[7]), .S (n_196), .Z
       (n_26));
  MUX2_X1 g4766__5019(.A (a0_mux[6]), .B (a1_mux[6]), .S (n_196), .Z
       (n_4));
  INV_X1 g4776(.A (n_119), .ZN (n_48));
  MUX2_X1 g4762__1857(.A (a0_mux[0]), .B (a1_mux[0]), .S (n_196), .Z
       (n_64));
  MUX2_X1 g4764__9906(.A (a0_mux[4]), .B (a1_mux[4]), .S (n_196), .Z
       (n_36));
  MUX2_X1 g4768__8780(.A (a0_mux[3]), .B (a1_mux[3]), .S (n_196), .Z
       (n_55));
  INV_X1 g4774(.A (n_130), .ZN (n_1));
  INV_X1 g4775(.A (n_40), .ZN (n_73));
  MUX2_X1 g4767__4296(.A (a0_mux[2]), .B (a1_mux[2]), .S (n_196), .Z
       (n_30));
  MUX2_X1 g4769__3772(.A (a0_mux[1]), .B (a1_mux[1]), .S (n_196), .Z
       (n_75));
  MUX2_X1 g4765__1474(.A (a0_mux[5]), .B (a1_mux[5]), .S (n_196), .Z
       (n_59));
  NOR2_X1 g4773__4547(.A1 (n_0), .A2 (n_221), .ZN (n_120));
  NAND2_X1 g4772__9682(.A1 (n_0), .A2 (n_221), .ZN (n_58));
  NOR2_X1 g4779__2683(.A1 (n_221), .A2 (n_201), .ZN (n_119));
  NAND2_X1 g4778__1309(.A1 (n_221), .A2 (n_201), .ZN (n_40));
  NOR2_X1 g4777__6877(.A1 (n_201), .A2 (n_188), .ZN (n_130));
  INV_X1 drc_bufs4959(.A (n_201), .ZN (n_0));
  CLKBUF_X1 drc_buf_sp(.A (b[4]), .Z (n_265));
  CLKBUF_X1 drc_buf_sp5025(.A (b[2]), .Z (n_239));
  CLKBUF_X1 drc_buf_sp5028(.A (b[6]), .Z (n_252));
  CLKBUF_X1 drc_buf_sp5039(.A (a_sel), .Z (n_196));
  CLKBUF_X1 drc_buf_sp5042(.A (b[0]), .Z (n_231));
  CLKBUF_X1 drc_buf_sp5045(.A (ctrl[1]), .Z (n_201));
  CLKBUF_X1 drc_buf_sp5048(.A (b[7]), .Z (n_226));
  CLKBUF_X1 drc_buf_sp5051(.A (b[3]), .Z (n_211));
  CLKBUF_X1 drc_buf_sp5054(.A (b[1]), .Z (n_216));
  CLKBUF_X1 drc_buf_sp5057(.A (b[5]), .Z (n_206));
  CLKBUF_X1 drc_buf_sp5060(.A (ctrl[2]), .Z (n_221));
  INV_X1 drc_bufs(.A (n_141), .ZN (n_188));
  INV_X1 drc_bufs5156(.A (ctrl[0]), .ZN (n_141));
endmodule

