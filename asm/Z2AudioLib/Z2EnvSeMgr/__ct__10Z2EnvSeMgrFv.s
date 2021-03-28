lbl_802C611C:
/* 802C611C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C6120  7C 08 02 A6 */	mflr r0
/* 802C6124  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C6128  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802C612C  7C 7F 1B 78 */	mr r31, r3
/* 802C6130  93 ED 85 BC */	stw r31, data_80450B3C(r13)
/* 802C6134  4B FF FD 99 */	bl __ct__14Z2EnvSeAutoPanFv
/* 802C6138  38 7F 00 1C */	addi r3, r31, 0x1c
/* 802C613C  4B FF FD 91 */	bl __ct__14Z2EnvSeAutoPanFv
/* 802C6140  38 00 00 00 */	li r0, 0
/* 802C6144  98 1F 00 38 */	stb r0, 0x38(r31)
/* 802C6148  C0 02 C3 44 */	lfs f0, lit_3502(r2)
/* 802C614C  D0 1F 00 48 */	stfs f0, 0x48(r31)
/* 802C6150  D0 1F 00 4C */	stfs f0, 0x4c(r31)
/* 802C6154  D0 1F 00 50 */	stfs f0, 0x50(r31)
/* 802C6158  38 7F 00 64 */	addi r3, r31, 0x64
/* 802C615C  4B FE 89 A9 */	bl __ct__12Z2MultiSeMgrFv
/* 802C6160  38 7F 00 80 */	addi r3, r31, 0x80
/* 802C6164  38 80 00 00 */	li r4, 0
/* 802C6168  4B FF F7 35 */	bl __ct__11Z2EnvSeBaseFP3Vec
/* 802C616C  38 7F 00 88 */	addi r3, r31, 0x88
/* 802C6170  38 80 00 00 */	li r4, 0
/* 802C6174  4B FF F7 29 */	bl __ct__11Z2EnvSeBaseFP3Vec
/* 802C6178  C0 42 C3 50 */	lfs f2, lit_3505(r2)
/* 802C617C  D0 5F 00 90 */	stfs f2, 0x90(r31)
/* 802C6180  D0 5F 00 94 */	stfs f2, 0x94(r31)
/* 802C6184  C0 22 C3 78 */	lfs f1, lit_3749(r2)
/* 802C6188  D0 3F 00 98 */	stfs f1, 0x98(r31)
/* 802C618C  C0 02 C3 48 */	lfs f0, lit_3503(r2)
/* 802C6190  D0 1F 00 9C */	stfs f0, 0x9c(r31)
/* 802C6194  D0 5F 00 A0 */	stfs f2, 0xa0(r31)
/* 802C6198  D0 5F 00 A4 */	stfs f2, 0xa4(r31)
/* 802C619C  D0 3F 00 A8 */	stfs f1, 0xa8(r31)
/* 802C61A0  D0 1F 00 AC */	stfs f0, 0xac(r31)
/* 802C61A4  D0 5F 00 B0 */	stfs f2, 0xb0(r31)
/* 802C61A8  D0 5F 00 B4 */	stfs f2, 0xb4(r31)
/* 802C61AC  D0 3F 00 B8 */	stfs f1, 0xb8(r31)
/* 802C61B0  D0 1F 00 BC */	stfs f0, 0xbc(r31)
/* 802C61B4  D0 5F 00 C0 */	stfs f2, 0xc0(r31)
/* 802C61B8  D0 5F 00 C4 */	stfs f2, 0xc4(r31)
/* 802C61BC  D0 3F 00 C8 */	stfs f1, 0xc8(r31)
/* 802C61C0  D0 1F 00 CC */	stfs f0, 0xcc(r31)
/* 802C61C4  D0 5F 00 D0 */	stfs f2, 0xd0(r31)
/* 802C61C8  D0 5F 00 D4 */	stfs f2, 0xd4(r31)
/* 802C61CC  D0 3F 00 D8 */	stfs f1, 0xd8(r31)
/* 802C61D0  D0 1F 00 DC */	stfs f0, 0xdc(r31)
/* 802C61D4  D0 5F 00 E0 */	stfs f2, 0xe0(r31)
/* 802C61D8  D0 5F 00 E4 */	stfs f2, 0xe4(r31)
/* 802C61DC  D0 3F 00 E8 */	stfs f1, 0xe8(r31)
/* 802C61E0  D0 1F 00 EC */	stfs f0, 0xec(r31)
/* 802C61E4  D0 5F 00 F0 */	stfs f2, 0xf0(r31)
/* 802C61E8  D0 5F 00 F4 */	stfs f2, 0xf4(r31)
/* 802C61EC  D0 3F 00 F8 */	stfs f1, 0xf8(r31)
/* 802C61F0  D0 1F 00 FC */	stfs f0, 0xfc(r31)
/* 802C61F4  D0 5F 01 00 */	stfs f2, 0x100(r31)
/* 802C61F8  D0 5F 01 04 */	stfs f2, 0x104(r31)
/* 802C61FC  D0 3F 01 08 */	stfs f1, 0x108(r31)
/* 802C6200  D0 1F 01 0C */	stfs f0, 0x10c(r31)
/* 802C6204  38 7F 01 10 */	addi r3, r31, 0x110
/* 802C6208  38 80 00 00 */	li r4, 0
/* 802C620C  4B FF F6 91 */	bl __ct__11Z2EnvSeBaseFP3Vec
/* 802C6210  38 7F 01 18 */	addi r3, r31, 0x118
/* 802C6214  38 80 00 00 */	li r4, 0
/* 802C6218  4B FF F6 85 */	bl __ct__11Z2EnvSeBaseFP3Vec
/* 802C621C  C0 42 C3 50 */	lfs f2, lit_3505(r2)
/* 802C6220  D0 5F 01 20 */	stfs f2, 0x120(r31)
/* 802C6224  D0 5F 01 24 */	stfs f2, 0x124(r31)
/* 802C6228  C0 22 C3 78 */	lfs f1, lit_3749(r2)
/* 802C622C  D0 3F 01 28 */	stfs f1, 0x128(r31)
/* 802C6230  C0 02 C3 48 */	lfs f0, lit_3503(r2)
/* 802C6234  D0 1F 01 2C */	stfs f0, 0x12c(r31)
/* 802C6238  D0 5F 01 30 */	stfs f2, 0x130(r31)
/* 802C623C  D0 5F 01 34 */	stfs f2, 0x134(r31)
/* 802C6240  D0 3F 01 38 */	stfs f1, 0x138(r31)
/* 802C6244  D0 1F 01 3C */	stfs f0, 0x13c(r31)
/* 802C6248  38 00 00 00 */	li r0, 0
/* 802C624C  98 1F 01 40 */	stb r0, 0x140(r31)
/* 802C6250  98 1F 01 41 */	stb r0, 0x141(r31)
/* 802C6254  38 7F 01 44 */	addi r3, r31, 0x144
/* 802C6258  38 80 00 00 */	li r4, 0
/* 802C625C  4B FF FA 41 */	bl __ct__10Z2EnvSeDirFP3Vec
/* 802C6260  38 00 00 00 */	li r0, 0
/* 802C6264  98 1F 01 60 */	stb r0, 0x160(r31)
/* 802C6268  38 7F 01 64 */	addi r3, r31, 0x164
/* 802C626C  4B FE 88 99 */	bl __ct__12Z2MultiSeMgrFv
/* 802C6270  38 7F 01 80 */	addi r3, r31, 0x180
/* 802C6274  38 80 00 00 */	li r4, 0
/* 802C6278  4B FF F6 25 */	bl __ct__11Z2EnvSeBaseFP3Vec
/* 802C627C  38 00 00 00 */	li r0, 0
/* 802C6280  98 1F 01 88 */	stb r0, 0x188(r31)
/* 802C6284  C0 42 C3 50 */	lfs f2, lit_3505(r2)
/* 802C6288  D0 5F 01 8C */	stfs f2, 0x18c(r31)
/* 802C628C  D0 5F 01 90 */	stfs f2, 0x190(r31)
/* 802C6290  C0 22 C3 78 */	lfs f1, lit_3749(r2)
/* 802C6294  D0 3F 01 94 */	stfs f1, 0x194(r31)
/* 802C6298  C0 02 C3 48 */	lfs f0, lit_3503(r2)
/* 802C629C  D0 1F 01 98 */	stfs f0, 0x198(r31)
/* 802C62A0  D0 5F 01 9C */	stfs f2, 0x19c(r31)
/* 802C62A4  D0 5F 01 A0 */	stfs f2, 0x1a0(r31)
/* 802C62A8  D0 3F 01 A4 */	stfs f1, 0x1a4(r31)
/* 802C62AC  D0 1F 01 A8 */	stfs f0, 0x1a8(r31)
/* 802C62B0  C0 02 C3 44 */	lfs f0, lit_3502(r2)
/* 802C62B4  D0 1F 01 AC */	stfs f0, 0x1ac(r31)
/* 802C62B8  D0 1F 01 B0 */	stfs f0, 0x1b0(r31)
/* 802C62BC  D0 1F 01 B4 */	stfs f0, 0x1b4(r31)
/* 802C62C0  98 1F 01 B8 */	stb r0, 0x1b8(r31)
/* 802C62C4  38 7F 01 BC */	addi r3, r31, 0x1bc
/* 802C62C8  4B FE 88 3D */	bl __ct__12Z2MultiSeMgrFv
/* 802C62CC  38 7F 01 D8 */	addi r3, r31, 0x1d8
/* 802C62D0  38 80 00 00 */	li r4, 0
/* 802C62D4  4B FF F5 C9 */	bl __ct__11Z2EnvSeBaseFP3Vec
/* 802C62D8  38 00 00 00 */	li r0, 0
/* 802C62DC  98 1F 01 E0 */	stb r0, 0x1e0(r31)
/* 802C62E0  C0 02 C3 44 */	lfs f0, lit_3502(r2)
/* 802C62E4  D0 1F 01 E4 */	stfs f0, 0x1e4(r31)
/* 802C62E8  D0 1F 01 E8 */	stfs f0, 0x1e8(r31)
/* 802C62EC  D0 1F 01 EC */	stfs f0, 0x1ec(r31)
/* 802C62F0  38 7F 01 F0 */	addi r3, r31, 0x1f0
/* 802C62F4  4B FE 88 11 */	bl __ct__12Z2MultiSeMgrFv
/* 802C62F8  38 7F 02 0C */	addi r3, r31, 0x20c
/* 802C62FC  38 80 00 00 */	li r4, 0
/* 802C6300  4B FF F5 9D */	bl __ct__11Z2EnvSeBaseFP3Vec
/* 802C6304  38 00 00 00 */	li r0, 0
/* 802C6308  98 1F 02 14 */	stb r0, 0x214(r31)
/* 802C630C  C0 02 C3 44 */	lfs f0, lit_3502(r2)
/* 802C6310  D0 1F 02 18 */	stfs f0, 0x218(r31)
/* 802C6314  D0 1F 02 1C */	stfs f0, 0x21c(r31)
/* 802C6318  D0 1F 02 20 */	stfs f0, 0x220(r31)
/* 802C631C  38 7F 02 24 */	addi r3, r31, 0x224
/* 802C6320  4B FE 87 E5 */	bl __ct__12Z2MultiSeMgrFv
/* 802C6324  38 7F 02 40 */	addi r3, r31, 0x240
/* 802C6328  38 80 00 00 */	li r4, 0
/* 802C632C  4B FF F5 71 */	bl __ct__11Z2EnvSeBaseFP3Vec
/* 802C6330  38 00 00 00 */	li r0, 0
/* 802C6334  98 1F 02 48 */	stb r0, 0x248(r31)
/* 802C6338  C0 02 C3 44 */	lfs f0, lit_3502(r2)
/* 802C633C  D0 1F 02 4C */	stfs f0, 0x24c(r31)
/* 802C6340  D0 1F 02 50 */	stfs f0, 0x250(r31)
/* 802C6344  D0 1F 02 54 */	stfs f0, 0x254(r31)
/* 802C6348  38 7F 02 58 */	addi r3, r31, 0x258
/* 802C634C  4B FE 87 B9 */	bl __ct__12Z2MultiSeMgrFv
/* 802C6350  38 7F 02 74 */	addi r3, r31, 0x274
/* 802C6354  38 80 00 00 */	li r4, 0
/* 802C6358  4B FF F5 45 */	bl __ct__11Z2EnvSeBaseFP3Vec
/* 802C635C  38 00 00 00 */	li r0, 0
/* 802C6360  98 1F 02 7C */	stb r0, 0x27c(r31)
/* 802C6364  C0 02 C3 44 */	lfs f0, lit_3502(r2)
/* 802C6368  D0 1F 02 80 */	stfs f0, 0x280(r31)
/* 802C636C  D0 1F 02 84 */	stfs f0, 0x284(r31)
/* 802C6370  D0 1F 02 88 */	stfs f0, 0x288(r31)
/* 802C6374  38 7F 02 8C */	addi r3, r31, 0x28c
/* 802C6378  4B FE 87 8D */	bl __ct__12Z2MultiSeMgrFv
/* 802C637C  38 7F 02 A8 */	addi r3, r31, 0x2a8
/* 802C6380  38 80 00 00 */	li r4, 0
/* 802C6384  4B FF F5 19 */	bl __ct__11Z2EnvSeBaseFP3Vec
/* 802C6388  38 00 00 00 */	li r0, 0
/* 802C638C  98 1F 02 B0 */	stb r0, 0x2b0(r31)
/* 802C6390  C0 02 C3 44 */	lfs f0, lit_3502(r2)
/* 802C6394  D0 1F 02 B4 */	stfs f0, 0x2b4(r31)
/* 802C6398  D0 1F 02 B8 */	stfs f0, 0x2b8(r31)
/* 802C639C  D0 1F 02 BC */	stfs f0, 0x2bc(r31)
/* 802C63A0  38 7F 02 C0 */	addi r3, r31, 0x2c0
/* 802C63A4  4B FE 87 61 */	bl __ct__12Z2MultiSeMgrFv
/* 802C63A8  38 7F 02 DC */	addi r3, r31, 0x2dc
/* 802C63AC  38 80 00 00 */	li r4, 0
/* 802C63B0  4B FF F4 ED */	bl __ct__11Z2EnvSeBaseFP3Vec
/* 802C63B4  38 00 00 00 */	li r0, 0
/* 802C63B8  98 1F 02 E4 */	stb r0, 0x2e4(r31)
/* 802C63BC  C0 22 C3 50 */	lfs f1, lit_3505(r2)
/* 802C63C0  D0 3F 02 E8 */	stfs f1, 0x2e8(r31)
/* 802C63C4  D0 3F 02 EC */	stfs f1, 0x2ec(r31)
/* 802C63C8  C0 42 C3 78 */	lfs f2, lit_3749(r2)
/* 802C63CC  D0 5F 02 F0 */	stfs f2, 0x2f0(r31)
/* 802C63D0  C0 02 C3 48 */	lfs f0, lit_3503(r2)
/* 802C63D4  D0 1F 02 F4 */	stfs f0, 0x2f4(r31)
/* 802C63D8  D0 3F 02 F8 */	stfs f1, 0x2f8(r31)
/* 802C63DC  D0 3F 02 FC */	stfs f1, 0x2fc(r31)
/* 802C63E0  D0 5F 03 00 */	stfs f2, 0x300(r31)
/* 802C63E4  D0 1F 03 04 */	stfs f0, 0x304(r31)
/* 802C63E8  D0 1F 03 08 */	stfs f0, 0x308(r31)
/* 802C63EC  D0 1F 00 3C */	stfs f0, 0x3c(r31)
/* 802C63F0  D0 1F 00 40 */	stfs f0, 0x40(r31)
/* 802C63F4  D0 1F 00 44 */	stfs f0, 0x44(r31)
/* 802C63F8  D0 1F 00 54 */	stfs f0, 0x54(r31)
/* 802C63FC  D0 1F 00 58 */	stfs f0, 0x58(r31)
/* 802C6400  D0 1F 00 5C */	stfs f0, 0x5c(r31)
/* 802C6404  98 1F 00 39 */	stb r0, 0x39(r31)
/* 802C6408  38 7F 02 E8 */	addi r3, r31, 0x2e8
/* 802C640C  C0 42 C3 7C */	lfs f2, lit_3750(r2)
/* 802C6410  C0 62 C3 80 */	lfs f3, lit_3751(r2)
/* 802C6414  4B FE 35 31 */	bl setParam__Q26Z2Calc8FNoise1fFfff
/* 802C6418  38 7F 02 F8 */	addi r3, r31, 0x2f8
/* 802C641C  C0 22 C3 84 */	lfs f1, lit_3752(r2)
/* 802C6420  C0 42 C3 7C */	lfs f2, lit_3750(r2)
/* 802C6424  C0 62 C3 80 */	lfs f3, lit_3751(r2)
/* 802C6428  4B FE 35 1D */	bl setParam__Q26Z2Calc8FNoise1fFfff
/* 802C642C  38 7F 00 90 */	addi r3, r31, 0x90
/* 802C6430  C0 22 C3 50 */	lfs f1, lit_3505(r2)
/* 802C6434  C0 42 C3 88 */	lfs f2, lit_3753(r2)
/* 802C6438  C0 62 C3 8C */	lfs f3, lit_3754(r2)
/* 802C643C  4B FE 35 09 */	bl setParam__Q26Z2Calc8FNoise1fFfff
/* 802C6440  38 7F 00 A0 */	addi r3, r31, 0xa0
/* 802C6444  C0 22 C3 90 */	lfs f1, lit_3755(r2)
/* 802C6448  C0 42 C3 94 */	lfs f2, lit_3756(r2)
/* 802C644C  C0 62 C3 98 */	lfs f3, lit_3757(r2)
/* 802C6450  4B FE 34 F5 */	bl setParam__Q26Z2Calc8FNoise1fFfff
/* 802C6454  38 7F 00 B0 */	addi r3, r31, 0xb0
/* 802C6458  C0 22 C3 84 */	lfs f1, lit_3752(r2)
/* 802C645C  C0 42 C3 9C */	lfs f2, lit_3758(r2)
/* 802C6460  C0 62 C3 A0 */	lfs f3, lit_3759(r2)
/* 802C6464  4B FE 34 E1 */	bl setParam__Q26Z2Calc8FNoise1fFfff
/* 802C6468  38 7F 00 C0 */	addi r3, r31, 0xc0
/* 802C646C  C0 22 C3 A4 */	lfs f1, lit_3760(r2)
/* 802C6470  C0 42 C3 A8 */	lfs f2, lit_3761(r2)
/* 802C6474  C0 62 C3 AC */	lfs f3, lit_3762(r2)
/* 802C6478  4B FE 34 CD */	bl setParam__Q26Z2Calc8FNoise1fFfff
/* 802C647C  38 7F 00 D0 */	addi r3, r31, 0xd0
/* 802C6480  C0 22 C3 B0 */	lfs f1, lit_3763(r2)
/* 802C6484  C0 42 C3 B4 */	lfs f2, lit_3764(r2)
/* 802C6488  C0 62 C3 B8 */	lfs f3, lit_3765(r2)
/* 802C648C  4B FE 34 B9 */	bl setParam__Q26Z2Calc8FNoise1fFfff
/* 802C6490  38 7F 00 E0 */	addi r3, r31, 0xe0
/* 802C6494  C0 22 C3 BC */	lfs f1, lit_3766(r2)
/* 802C6498  C0 42 C3 C0 */	lfs f2, lit_3767(r2)
/* 802C649C  C0 62 C3 C4 */	lfs f3, lit_3768(r2)
/* 802C64A0  4B FE 34 A5 */	bl setParam__Q26Z2Calc8FNoise1fFfff
/* 802C64A4  38 7F 00 F0 */	addi r3, r31, 0xf0
/* 802C64A8  C0 22 C3 C8 */	lfs f1, lit_3769(r2)
/* 802C64AC  C0 42 C3 CC */	lfs f2, lit_3770(r2)
/* 802C64B0  C0 62 C3 D0 */	lfs f3, lit_3771(r2)
/* 802C64B4  4B FE 34 91 */	bl setParam__Q26Z2Calc8FNoise1fFfff
/* 802C64B8  38 7F 01 00 */	addi r3, r31, 0x100
/* 802C64BC  C0 22 C3 D4 */	lfs f1, lit_3772(r2)
/* 802C64C0  C0 42 C3 D8 */	lfs f2, lit_3773(r2)
/* 802C64C4  C0 62 C3 DC */	lfs f3, lit_3774(r2)
/* 802C64C8  4B FE 34 7D */	bl setParam__Q26Z2Calc8FNoise1fFfff
/* 802C64CC  38 7F 01 8C */	addi r3, r31, 0x18c
/* 802C64D0  C0 22 C3 50 */	lfs f1, lit_3505(r2)
/* 802C64D4  C0 42 C3 94 */	lfs f2, lit_3756(r2)
/* 802C64D8  C0 62 C3 8C */	lfs f3, lit_3754(r2)
/* 802C64DC  4B FE 34 69 */	bl setParam__Q26Z2Calc8FNoise1fFfff
/* 802C64E0  38 7F 01 9C */	addi r3, r31, 0x19c
/* 802C64E4  C0 22 C3 60 */	lfs f1, lit_3574(r2)
/* 802C64E8  C0 42 C3 B4 */	lfs f2, lit_3764(r2)
/* 802C64EC  C0 62 C3 C4 */	lfs f3, lit_3768(r2)
/* 802C64F0  4B FE 34 55 */	bl setParam__Q26Z2Calc8FNoise1fFfff
/* 802C64F4  C0 02 C3 44 */	lfs f0, lit_3502(r2)
/* 802C64F8  D0 1F 00 64 */	stfs f0, 0x64(r31)
/* 802C64FC  D0 1F 02 C0 */	stfs f0, 0x2c0(r31)
/* 802C6500  38 7F 01 20 */	addi r3, r31, 0x120
/* 802C6504  C0 22 C3 60 */	lfs f1, lit_3574(r2)
/* 802C6508  C0 42 C3 E0 */	lfs f2, lit_3775(r2)
/* 802C650C  C0 62 C3 E4 */	lfs f3, lit_3776(r2)
/* 802C6510  4B FE 34 35 */	bl setParam__Q26Z2Calc8FNoise1fFfff
/* 802C6514  38 7F 01 30 */	addi r3, r31, 0x130
/* 802C6518  C0 22 C3 50 */	lfs f1, lit_3505(r2)
/* 802C651C  C0 42 C3 E8 */	lfs f2, lit_3777(r2)
/* 802C6520  C0 62 C3 8C */	lfs f3, lit_3754(r2)
/* 802C6524  4B FE 34 21 */	bl setParam__Q26Z2Calc8FNoise1fFfff
/* 802C6528  7F E3 FB 78 */	mr r3, r31
/* 802C652C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802C6530  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C6534  7C 08 03 A6 */	mtlr r0
/* 802C6538  38 21 00 10 */	addi r1, r1, 0x10
/* 802C653C  4E 80 00 20 */	blr 
