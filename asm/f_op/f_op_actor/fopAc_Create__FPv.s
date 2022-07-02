lbl_8001904C:
/* 8001904C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80019050  7C 08 02 A6 */	mflr r0
/* 80019054  90 01 00 34 */	stw r0, 0x34(r1)
/* 80019058  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8001905C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80019060  7C 7F 1B 78 */	mr r31, r3
/* 80019064  88 03 00 0C */	lbz r0, 0xc(r3)
/* 80019068  7C 00 07 75 */	extsb. r0, r0
/* 8001906C  40 82 03 30 */	bne lbl_8001939C
/* 80019070  83 C3 00 10 */	lwz r30, 0x10(r3)
/* 80019074  38 6D 87 38 */	la r3, g_fopAc_type(r13) /* 80450CB8-_SDA_BASE_ */
/* 80019078  48 00 75 E5 */	bl fpcBs_MakeOfType__FPi
/* 8001907C  90 7F 00 C0 */	stw r3, 0xc0(r31)
/* 80019080  80 1E 00 24 */	lwz r0, 0x24(r30)
/* 80019084  90 1F 00 EC */	stw r0, 0xec(r31)
/* 80019088  38 7F 00 C4 */	addi r3, r31, 0xc4
/* 8001908C  7F E4 FB 78 */	mr r4, r31
/* 80019090  48 00 07 F1 */	bl fopAcTg_Init__FP16create_tag_classPv
/* 80019094  38 7F 00 C4 */	addi r3, r31, 0xc4
/* 80019098  48 00 07 9D */	bl fopAcTg_ToActorQ__FP16create_tag_class
/* 8001909C  38 7F 00 D8 */	addi r3, r31, 0xd8
/* 800190A0  7F E4 FB 78 */	mr r4, r31
/* 800190A4  48 00 74 51 */	bl fopDwTg_Init__FP16create_tag_classPv
/* 800190A8  80 1E 00 28 */	lwz r0, 0x28(r30)
/* 800190AC  90 1F 04 9C */	stw r0, 0x49c(r31)
/* 800190B0  88 1E 00 2C */	lbz r0, 0x2c(r30)
/* 800190B4  98 1F 04 96 */	stb r0, 0x496(r31)
/* 800190B8  88 1E 00 2D */	lbz r0, 0x2d(r30)
/* 800190BC  98 1F 04 97 */	stb r0, 0x497(r31)
/* 800190C0  80 9F 00 AC */	lwz r4, 0xac(r31)
/* 800190C4  28 04 00 00 */	cmplwi r4, 0
/* 800190C8  41 82 00 D4 */	beq lbl_8001919C
/* 800190CC  80 04 00 00 */	lwz r0, 0(r4)
/* 800190D0  90 1F 00 B0 */	stw r0, 0xb0(r31)
/* 800190D4  C0 04 00 04 */	lfs f0, 4(r4)
/* 800190D8  D0 1F 04 A8 */	stfs f0, 0x4a8(r31)
/* 800190DC  C0 04 00 08 */	lfs f0, 8(r4)
/* 800190E0  D0 1F 04 AC */	stfs f0, 0x4ac(r31)
/* 800190E4  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 800190E8  D0 1F 04 B0 */	stfs f0, 0x4b0(r31)
/* 800190EC  A8 04 00 10 */	lha r0, 0x10(r4)
/* 800190F0  B0 1F 04 B4 */	sth r0, 0x4b4(r31)
/* 800190F4  A8 04 00 12 */	lha r0, 0x12(r4)
/* 800190F8  B0 1F 04 B6 */	sth r0, 0x4b6(r31)
/* 800190FC  A8 04 00 14 */	lha r0, 0x14(r4)
/* 80019100  B0 1F 04 B8 */	sth r0, 0x4b8(r31)
/* 80019104  A8 04 00 10 */	lha r0, 0x10(r4)
/* 80019108  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 8001910C  A8 04 00 12 */	lha r0, 0x12(r4)
/* 80019110  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80019114  A8 04 00 14 */	lha r0, 0x14(r4)
/* 80019118  B0 1F 04 E8 */	sth r0, 0x4e8(r31)
/* 8001911C  80 04 00 1C */	lwz r0, 0x1c(r4)
/* 80019120  90 1F 04 A4 */	stw r0, 0x4a4(r31)
/* 80019124  88 04 00 20 */	lbz r0, 0x20(r4)
/* 80019128  98 1F 04 99 */	stb r0, 0x499(r31)
/* 8001912C  C0 42 81 D0 */	lfs f2, lit_4431(r2)
/* 80019130  88 04 00 1A */	lbz r0, 0x1a(r4)
/* 80019134  C8 22 81 D8 */	lfd f1, lit_4434(r2)
/* 80019138  90 01 00 0C */	stw r0, 0xc(r1)
/* 8001913C  3C 60 43 30 */	lis r3, 0x4330
/* 80019140  90 61 00 08 */	stw r3, 8(r1)
/* 80019144  C8 01 00 08 */	lfd f0, 8(r1)
/* 80019148  EC 00 08 28 */	fsubs f0, f0, f1
/* 8001914C  EC 82 00 32 */	fmuls f4, f2, f0
/* 80019150  88 04 00 19 */	lbz r0, 0x19(r4)
/* 80019154  90 01 00 14 */	stw r0, 0x14(r1)
/* 80019158  90 61 00 10 */	stw r3, 0x10(r1)
/* 8001915C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80019160  EC 00 08 28 */	fsubs f0, f0, f1
/* 80019164  EC 62 00 32 */	fmuls f3, f2, f0
/* 80019168  88 04 00 18 */	lbz r0, 0x18(r4)
/* 8001916C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80019170  90 61 00 18 */	stw r3, 0x18(r1)
/* 80019174  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80019178  EC 00 08 28 */	fsubs f0, f0, f1
/* 8001917C  EC 02 00 32 */	fmuls f0, f2, f0
/* 80019180  D0 1F 04 EC */	stfs f0, 0x4ec(r31)
/* 80019184  D0 7F 04 F0 */	stfs f3, 0x4f0(r31)
/* 80019188  D0 9F 04 F4 */	stfs f4, 0x4f4(r31)
/* 8001918C  A0 04 00 16 */	lhz r0, 0x16(r4)
/* 80019190  B0 1F 04 94 */	sth r0, 0x494(r31)
/* 80019194  88 04 00 21 */	lbz r0, 0x21(r4)
/* 80019198  98 1F 04 BA */	stb r0, 0x4ba(r31)
lbl_8001919C:
/* 8001919C  C0 1F 04 A8 */	lfs f0, 0x4a8(r31)
/* 800191A0  D0 1F 04 BC */	stfs f0, 0x4bc(r31)
/* 800191A4  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 800191A8  D0 1F 04 C0 */	stfs f0, 0x4c0(r31)
/* 800191AC  C0 1F 04 B0 */	lfs f0, 0x4b0(r31)
/* 800191B0  D0 1F 04 C4 */	stfs f0, 0x4c4(r31)
/* 800191B4  A8 1F 04 B4 */	lha r0, 0x4b4(r31)
/* 800191B8  B0 1F 04 C8 */	sth r0, 0x4c8(r31)
/* 800191BC  A8 1F 04 B6 */	lha r0, 0x4b6(r31)
/* 800191C0  B0 1F 04 CA */	sth r0, 0x4ca(r31)
/* 800191C4  A8 1F 04 B8 */	lha r0, 0x4b8(r31)
/* 800191C8  B0 1F 04 CC */	sth r0, 0x4cc(r31)
/* 800191CC  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 800191D0  98 1F 04 CE */	stb r0, 0x4ce(r31)
/* 800191D4  88 1F 04 BB */	lbz r0, 0x4bb(r31)
/* 800191D8  98 1F 04 CF */	stb r0, 0x4cf(r31)
/* 800191DC  C0 1F 04 A8 */	lfs f0, 0x4a8(r31)
/* 800191E0  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 800191E4  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 800191E8  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 800191EC  C0 1F 04 B0 */	lfs f0, 0x4b0(r31)
/* 800191F0  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 800191F4  A8 1F 04 B4 */	lha r0, 0x4b4(r31)
/* 800191F8  B0 1F 04 DC */	sth r0, 0x4dc(r31)
/* 800191FC  A8 1F 04 B6 */	lha r0, 0x4b6(r31)
/* 80019200  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 80019204  A8 1F 04 B8 */	lha r0, 0x4b8(r31)
/* 80019208  B0 1F 04 E0 */	sth r0, 0x4e0(r31)
/* 8001920C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80019210  98 1F 04 E2 */	stb r0, 0x4e2(r31)
/* 80019214  88 1F 04 BB */	lbz r0, 0x4bb(r31)
/* 80019218  98 1F 04 E3 */	stb r0, 0x4e3(r31)
/* 8001921C  C0 1F 04 A8 */	lfs f0, 0x4a8(r31)
/* 80019220  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 80019224  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 80019228  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 8001922C  C0 1F 04 B0 */	lfs f0, 0x4b0(r31)
/* 80019230  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 80019234  C0 02 81 D4 */	lfs f0, lit_4432(r2)
/* 80019238  D0 1F 05 34 */	stfs f0, 0x534(r31)
/* 8001923C  38 00 00 01 */	li r0, 1
/* 80019240  98 1F 05 44 */	stb r0, 0x544(r31)
/* 80019244  38 00 00 02 */	li r0, 2
/* 80019248  98 1F 05 45 */	stb r0, 0x545(r31)
/* 8001924C  38 00 00 03 */	li r0, 3
/* 80019250  98 1F 05 46 */	stb r0, 0x546(r31)
/* 80019254  38 00 00 05 */	li r0, 5
/* 80019258  98 1F 05 47 */	stb r0, 0x547(r31)
/* 8001925C  38 00 00 06 */	li r0, 6
/* 80019260  98 1F 05 48 */	stb r0, 0x548(r31)
/* 80019264  38 00 00 0E */	li r0, 0xe
/* 80019268  98 1F 05 4B */	stb r0, 0x54b(r31)
/* 8001926C  38 00 00 0F */	li r0, 0xf
/* 80019270  98 1F 05 49 */	stb r0, 0x549(r31)
/* 80019274  98 1F 05 4A */	stb r0, 0x54a(r31)
/* 80019278  38 00 00 33 */	li r0, 0x33
/* 8001927C  98 1F 05 4C */	stb r0, 0x54c(r31)
/* 80019280  C0 1F 04 A8 */	lfs f0, 0x4a8(r31)
/* 80019284  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 80019288  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 8001928C  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 80019290  C0 1F 04 B0 */	lfs f0, 0x4b0(r31)
/* 80019294  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 80019298  38 00 00 1E */	li r0, 0x1e
/* 8001929C  B0 1F 05 4E */	sth r0, 0x54e(r31)
/* 800192A0  38 7F 01 0C */	addi r3, r31, 0x10c
/* 800192A4  88 9F 04 BA */	lbz r4, 0x4ba(r31)
/* 800192A8  38 A0 00 FF */	li r5, 0xff
/* 800192AC  48 18 F6 41 */	bl dKy_tevstr_init__FP12dKy_tevstr_cScUc
/* 800192B0  88 8D 87 E4 */	lbz r4, mStayNo__20dStage_roomControl_c+0x0(r13)
/* 800192B4  7C 84 07 75 */	extsb. r4, r4
/* 800192B8  41 80 00 24 */	blt lbl_800192DC
/* 800192BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800192C0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800192C4  38 63 4E C4 */	addi r3, r3, 0x4ec4
/* 800192C8  48 00 B0 BD */	bl getStatusRoomDt__20dStage_roomControl_cFi
/* 800192CC  81 83 00 00 */	lwz r12, 0(r3)
/* 800192D0  81 8C 01 0C */	lwz r12, 0x10c(r12)
/* 800192D4  7D 89 03 A6 */	mtctr r12
/* 800192D8  4E 80 04 21 */	bctrl 
lbl_800192DC:
/* 800192DC  38 60 00 00 */	li r3, 0
/* 800192E0  88 9F 04 BA */	lbz r4, 0x4ba(r31)
/* 800192E4  7C 80 07 75 */	extsb. r0, r4
/* 800192E8  41 80 00 28 */	blt lbl_80019310
/* 800192EC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800192F0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800192F4  38 63 4E C4 */	addi r3, r3, 0x4ec4
/* 800192F8  7C 84 07 74 */	extsb r4, r4
/* 800192FC  48 00 B0 89 */	bl getStatusRoomDt__20dStage_roomControl_cFi
/* 80019300  81 83 00 00 */	lwz r12, 0(r3)
/* 80019304  81 8C 01 0C */	lwz r12, 0x10c(r12)
/* 80019308  7D 89 03 A6 */	mtctr r12
/* 8001930C  4E 80 04 21 */	bctrl 
lbl_80019310:
/* 80019310  28 03 00 00 */	cmplwi r3, 0
/* 80019314  41 82 00 88 */	beq lbl_8001939C
/* 80019318  80 03 00 00 */	lwz r0, 0(r3)
/* 8001931C  54 00 00 85 */	rlwinm. r0, r0, 0, 2, 2
/* 80019320  40 82 00 40 */	bne lbl_80019360
/* 80019324  88 83 00 1B */	lbz r4, 0x1b(r3)
/* 80019328  28 04 00 FF */	cmplwi r4, 0xff
/* 8001932C  41 82 00 70 */	beq lbl_8001939C
/* 80019330  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80019334  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80019338  88 BF 04 BA */	lbz r5, 0x4ba(r31)
/* 8001933C  7C A5 07 74 */	extsb r5, r5
/* 80019340  48 01 C0 21 */	bl isSwitch__10dSv_info_cCFii
/* 80019344  2C 03 00 00 */	cmpwi r3, 0
/* 80019348  41 82 00 54 */	beq lbl_8001939C
/* 8001934C  88 1E 00 2C */	lbz r0, 0x2c(r30)
/* 80019350  28 00 00 02 */	cmplwi r0, 2
/* 80019354  40 82 00 48 */	bne lbl_8001939C
/* 80019358  38 60 00 05 */	li r3, 5
/* 8001935C  48 00 00 88 */	b lbl_800193E4
lbl_80019360:
/* 80019360  88 83 00 1B */	lbz r4, 0x1b(r3)
/* 80019364  28 04 00 FF */	cmplwi r4, 0xff
/* 80019368  41 82 00 34 */	beq lbl_8001939C
/* 8001936C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80019370  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80019374  88 BF 04 BA */	lbz r5, 0x4ba(r31)
/* 80019378  7C A5 07 74 */	extsb r5, r5
/* 8001937C  48 01 BF E5 */	bl isSwitch__10dSv_info_cCFii
/* 80019380  2C 03 00 00 */	cmpwi r3, 0
/* 80019384  40 82 00 18 */	bne lbl_8001939C
/* 80019388  88 1E 00 2C */	lbz r0, 0x2c(r30)
/* 8001938C  28 00 00 02 */	cmplwi r0, 2
/* 80019390  40 82 00 0C */	bne lbl_8001939C
/* 80019394  38 60 00 05 */	li r3, 5
/* 80019398  48 00 00 4C */	b lbl_800193E4
lbl_8001939C:
/* 8001939C  80 7F 00 EC */	lwz r3, 0xec(r31)
/* 800193A0  7F E4 FB 78 */	mr r4, r31
/* 800193A4  48 00 91 29 */	bl fpcMtd_Create__FP20process_method_classPv
/* 800193A8  7C 7E 1B 78 */	mr r30, r3
/* 800193AC  2C 1E 00 04 */	cmpwi r30, 4
/* 800193B0  40 82 00 1C */	bne lbl_800193CC
/* 800193B4  7F E3 FB 78 */	mr r3, r31
/* 800193B8  48 00 86 49 */	bl fpcLf_GetPriority__FPC14leafdraw_class
/* 800193BC  7C 64 07 34 */	extsh r4, r3
/* 800193C0  38 7F 00 D8 */	addi r3, r31, 0xd8
/* 800193C4  48 00 70 E9 */	bl fopDwTg_ToDrawQ__FP16create_tag_classi
/* 800193C8  48 00 00 18 */	b lbl_800193E0
lbl_800193CC:
/* 800193CC  2C 1E 00 05 */	cmpwi r30, 5
/* 800193D0  40 82 00 10 */	bne lbl_800193E0
/* 800193D4  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 800193D8  60 00 00 10 */	ori r0, r0, 0x10
/* 800193DC  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_800193E0:
/* 800193E0  7F C3 F3 78 */	mr r3, r30
lbl_800193E4:
/* 800193E4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 800193E8  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 800193EC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800193F0  7C 08 03 A6 */	mtlr r0
/* 800193F4  38 21 00 30 */	addi r1, r1, 0x30
/* 800193F8  4E 80 00 20 */	blr 
