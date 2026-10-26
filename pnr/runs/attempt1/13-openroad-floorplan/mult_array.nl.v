module mult_array (clk,
    rst_n,
    a,
    b,
    p);
 input clk;
 input rst_n;
 input [3:0] a;
 input [3:0] b;
 output [7:0] p;

 wire \ADD1[0].fa.sum ;
 wire \ADD2[0].fa.sum ;
 wire \ADD3[0].fa.sum ;
 wire \ADD3[1].fa.sum ;
 wire \ADD3[2].fa.sum ;
 wire \ADD3[3].fa.cout ;
 wire \ADD3[3].fa.sum ;
 wire _00_;
 wire _01_;
 wire _02_;
 wire _03_;
 wire _04_;
 wire _05_;
 wire _06_;
 wire _07_;
 wire _08_;
 wire _09_;
 wire _10_;
 wire _11_;
 wire _12_;
 wire _13_;
 wire _14_;
 wire _15_;
 wire _16_;
 wire _17_;
 wire _18_;
 wire _19_;
 wire _20_;
 wire _21_;
 wire _22_;
 wire _23_;
 wire _24_;
 wire _25_;
 wire _26_;
 wire _27_;
 wire _28_;
 wire _29_;
 wire _30_;
 wire _31_;
 wire _32_;
 wire _33_;
 wire _34_;
 wire _35_;
 wire _36_;
 wire \pp[0] ;
 wire \product_stage1[0] ;
 wire \product_stage1[1] ;
 wire \product_stage1[2] ;
 wire \product_stage1[3] ;
 wire \product_stage1[4] ;
 wire \product_stage1[5] ;
 wire \product_stage1[6] ;
 wire \product_stage1[7] ;

 sky130_fd_sc_hd__and2_0 _37_ (.A(a[0]),
    .B(b[0]),
    .X(\pp[0] ));
 sky130_fd_sc_hd__a22oi_1 _38_ (.A1(b[1]),
    .A2(a[0]),
    .B1(b[0]),
    .B2(a[1]),
    .Y(_00_));
 sky130_fd_sc_hd__xnor2_1 _39_ (.A(_02_),
    .B(_07_),
    .Y(\ADD2[0].fa.sum ));
 sky130_fd_sc_hd__nand2_1 _40_ (.A(a[0]),
    .B(b[3]),
    .Y(_08_));
 sky130_fd_sc_hd__a32o_1 _41_ (.A1(_02_),
    .A2(_05_),
    .A3(_06_),
    .B1(b[2]),
    .B2(a[1]),
    .X(_09_));
 sky130_fd_sc_hd__nand4_1 _42_ (.A(a[1]),
    .B(_02_),
    .C(_05_),
    .D(_06_),
    .Y(_10_));
 sky130_fd_sc_hd__nand2_1 _43_ (.A(b[0]),
    .B(a[3]),
    .Y(_11_));
 sky130_fd_sc_hd__nor2_1 _44_ (.A(_03_),
    .B(_04_),
    .Y(_12_));
 sky130_fd_sc_hd__o221ai_1 _45_ (.A1(a[2]),
    .A2(_01_),
    .B1(_03_),
    .B2(_04_),
    .C1(b[1]),
    .Y(_13_));
 sky130_fd_sc_hd__xor2_1 _46_ (.A(_11_),
    .B(_13_),
    .X(_14_));
 sky130_fd_sc_hd__and3_1 _47_ (.A(_09_),
    .B(_10_),
    .C(_14_),
    .X(_15_));
 sky130_fd_sc_hd__a21oi_1 _48_ (.A1(_09_),
    .A2(_10_),
    .B1(_14_),
    .Y(_16_));
 sky130_fd_sc_hd__and3_1 _49_ (.A(a[0]),
    .B(b[0]),
    .C(a[1]),
    .X(_01_));
 sky130_fd_sc_hd__nor3_1 _50_ (.A(_08_),
    .B(_15_),
    .C(_16_),
    .Y(_17_));
 sky130_fd_sc_hd__o21ai_0 _51_ (.A1(_15_),
    .A2(_16_),
    .B1(_08_),
    .Y(_18_));
 sky130_fd_sc_hd__nor2b_1 _52_ (.A(_17_),
    .B_N(_18_),
    .Y(\ADD3[0].fa.sum ));
 sky130_fd_sc_hd__nand2_1 _53_ (.A(a[1]),
    .B(b[3]),
    .Y(_19_));
 sky130_fd_sc_hd__o31ai_1 _54_ (.A1(_08_),
    .A2(_15_),
    .A3(_16_),
    .B1(_19_),
    .Y(_20_));
 sky130_fd_sc_hd__a21boi_0 _55_ (.A1(a[1]),
    .A2(_17_),
    .B1_N(_20_),
    .Y(_21_));
 sky130_fd_sc_hd__and2_0 _56_ (.A(a[2]),
    .B(b[2]),
    .X(_22_));
 sky130_fd_sc_hd__a21bo_1 _57_ (.A1(_09_),
    .A2(_14_),
    .B1_N(_10_),
    .X(_23_));
 sky130_fd_sc_hd__o2111a_1 _58_ (.A1(a[2]),
    .A2(_01_),
    .B1(b[0]),
    .C1(b[1]),
    .D1(a[3]),
    .X(_24_));
 sky130_fd_sc_hd__a211oi_1 _59_ (.A1(b[1]),
    .A2(a[3]),
    .B1(_12_),
    .C1(_24_),
    .Y(_25_));
 sky130_fd_sc_hd__a21oi_1 _60_ (.A1(b[1]),
    .A2(_01_),
    .B1(_00_),
    .Y(\ADD1[0].fa.sum ));
 sky130_fd_sc_hd__nor2_1 _61_ (.A(_24_),
    .B(_25_),
    .Y(_26_));
 sky130_fd_sc_hd__xor3_1 _62_ (.A(_22_),
    .B(_23_),
    .C(_26_),
    .X(_27_));
 sky130_fd_sc_hd__xor2_1 _63_ (.A(_21_),
    .B(_27_),
    .X(\ADD3[1].fa.sum ));
 sky130_fd_sc_hd__nand2_1 _64_ (.A(a[3]),
    .B(b[2]),
    .Y(_28_));
 sky130_fd_sc_hd__maj3_1 _65_ (.A(_22_),
    .B(_23_),
    .C(_26_),
    .X(_29_));
 sky130_fd_sc_hd__xor3_1 _66_ (.A(_24_),
    .B(_28_),
    .C(_29_),
    .X(_30_));
 sky130_fd_sc_hd__nand2_1 _67_ (.A(a[2]),
    .B(b[3]),
    .Y(_31_));
 sky130_fd_sc_hd__a22oi_1 _68_ (.A1(a[1]),
    .A2(_17_),
    .B1(_20_),
    .B2(_27_),
    .Y(_32_));
 sky130_fd_sc_hd__xor2_1 _69_ (.A(_31_),
    .B(_32_),
    .X(_33_));
 sky130_fd_sc_hd__xnor2_1 _70_ (.A(_30_),
    .B(_33_),
    .Y(\ADD3[2].fa.sum ));
 sky130_fd_sc_hd__and2_0 _71_ (.A(a[0]),
    .B(b[2]),
    .X(_02_));
 sky130_fd_sc_hd__and2_0 _72_ (.A(a[3]),
    .B(b[3]),
    .X(_34_));
 sky130_fd_sc_hd__o21bai_1 _73_ (.A1(_24_),
    .A2(_29_),
    .B1_N(_28_),
    .Y(_35_));
 sky130_fd_sc_hd__maj3_1 _74_ (.A(_30_),
    .B(_31_),
    .C(_32_),
    .X(_36_));
 sky130_fd_sc_hd__xor3_1 _75_ (.A(_34_),
    .B(_35_),
    .C(_36_),
    .X(\ADD3[3].fa.sum ));
 sky130_fd_sc_hd__a21boi_0 _76_ (.A1(_35_),
    .A2(_36_),
    .B1_N(_34_),
    .Y(\ADD3[3].fa.cout ));
 sky130_fd_sc_hd__nand2_1 _77_ (.A(a[2]),
    .B(b[0]),
    .Y(_03_));
 sky130_fd_sc_hd__nand2_1 _78_ (.A(b[1]),
    .B(a[1]),
    .Y(_04_));
 sky130_fd_sc_hd__o21ai_0 _79_ (.A1(\pp[0] ),
    .A2(_04_),
    .B1(_03_),
    .Y(_05_));
 sky130_fd_sc_hd__or3_1 _80_ (.A(\pp[0] ),
    .B(_03_),
    .C(_04_),
    .X(_06_));
 sky130_fd_sc_hd__nand2_1 _81_ (.A(_05_),
    .B(_06_),
    .Y(_07_));
 sky130_fd_sc_hd__dfrtp_1 _82_ (.CLK(clk),
    .D(\product_stage1[0] ),
    .RESET_B(rst_n),
    .Q(p[0]));
 sky130_fd_sc_hd__dfrtp_1 _83_ (.CLK(clk),
    .D(\product_stage1[1] ),
    .RESET_B(rst_n),
    .Q(p[1]));
 sky130_fd_sc_hd__dfrtp_1 _84_ (.CLK(clk),
    .D(\product_stage1[2] ),
    .RESET_B(rst_n),
    .Q(p[2]));
 sky130_fd_sc_hd__dfrtp_1 _85_ (.CLK(clk),
    .D(\product_stage1[3] ),
    .RESET_B(rst_n),
    .Q(p[3]));
 sky130_fd_sc_hd__dfrtp_1 _86_ (.CLK(clk),
    .D(\product_stage1[4] ),
    .RESET_B(rst_n),
    .Q(p[4]));
 sky130_fd_sc_hd__dfrtp_1 _87_ (.CLK(clk),
    .D(\product_stage1[5] ),
    .RESET_B(rst_n),
    .Q(p[5]));
 sky130_fd_sc_hd__dfrtp_1 _88_ (.CLK(clk),
    .D(\product_stage1[6] ),
    .RESET_B(rst_n),
    .Q(p[6]));
 sky130_fd_sc_hd__dfrtp_1 _89_ (.CLK(clk),
    .D(\product_stage1[7] ),
    .RESET_B(rst_n),
    .Q(p[7]));
 sky130_fd_sc_hd__dfrtp_1 _90_ (.CLK(clk),
    .D(\pp[0] ),
    .RESET_B(rst_n),
    .Q(\product_stage1[0] ));
 sky130_fd_sc_hd__dfrtp_1 _91_ (.CLK(clk),
    .D(\ADD1[0].fa.sum ),
    .RESET_B(rst_n),
    .Q(\product_stage1[1] ));
 sky130_fd_sc_hd__dfrtp_1 _92_ (.CLK(clk),
    .D(\ADD2[0].fa.sum ),
    .RESET_B(rst_n),
    .Q(\product_stage1[2] ));
 sky130_fd_sc_hd__dfrtp_1 _93_ (.CLK(clk),
    .D(\ADD3[0].fa.sum ),
    .RESET_B(rst_n),
    .Q(\product_stage1[3] ));
 sky130_fd_sc_hd__dfrtp_1 _94_ (.CLK(clk),
    .D(\ADD3[1].fa.sum ),
    .RESET_B(rst_n),
    .Q(\product_stage1[4] ));
 sky130_fd_sc_hd__dfrtp_1 _95_ (.CLK(clk),
    .D(\ADD3[2].fa.sum ),
    .RESET_B(rst_n),
    .Q(\product_stage1[5] ));
 sky130_fd_sc_hd__dfrtp_1 _96_ (.CLK(clk),
    .D(\ADD3[3].fa.sum ),
    .RESET_B(rst_n),
    .Q(\product_stage1[6] ));
 sky130_fd_sc_hd__dfrtp_1 _97_ (.CLK(clk),
    .D(\ADD3[3].fa.cout ),
    .RESET_B(rst_n),
    .Q(\product_stage1[7] ));
endmodule
