lbl_8084D108:
/* 8084D108  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8084D10C  7C 08 02 A6 */	mflr r0
/* 8084D110  90 01 00 14 */	stw r0, 0x14(r1)
/* 8084D114  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8084D118  93 C1 00 08 */	stw r30, 8(r1)
/* 8084D11C  7C 7E 1B 78 */	mr r30, r3
/* 8084D120  48 00 79 C1 */	bl getMidnaActor__9daPy_py_cFv
/* 8084D124  7C 7F 1B 78 */	mr r31, r3
/* 8084D128  80 1E 07 28 */	lwz r0, 0x728(r30)
/* 8084D12C  2C 00 00 00 */	cmpwi r0, 0
/* 8084D130  40 82 00 14 */	bne lbl_8084D144
/* 8084D134  38 7E 06 DE */	addi r3, r30, 0x6de
/* 8084D138  38 80 00 00 */	li r4, 0
/* 8084D13C  38 A0 00 04 */	li r5, 4
/* 8084D140  4B A2 35 1C */	b cLib_chaseUC__FPUcUcUc
lbl_8084D144:
/* 8084D144  88 1E 06 DF */	lbz r0, 0x6df(r30)
/* 8084D148  28 00 00 00 */	cmplwi r0, 0
/* 8084D14C  40 82 01 F0 */	bne lbl_8084D33C
/* 8084D150  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8084D154  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8084D158  80 03 0D D0 */	lwz r0, 0xdd0(r3)
/* 8084D15C  54 00 07 3E */	clrlwi r0, r0, 0x1c
/* 8084D160  28 00 00 0A */	cmplwi r0, 0xa
/* 8084D164  40 82 01 D8 */	bne lbl_8084D33C
/* 8084D168  80 1E 07 3C */	lwz r0, 0x73c(r30)
/* 8084D16C  2C 00 00 01 */	cmpwi r0, 1
/* 8084D170  40 82 01 7C */	bne lbl_8084D2EC
/* 8084D174  7F C3 F3 78 */	mr r3, r30
/* 8084D178  4B FF DD C9 */	bl createBalloonScore__8daKago_cFv
/* 8084D17C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8084D180  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8084D184  A8 03 4E 08 */	lha r0, 0x4e08(r3)
/* 8084D188  7C 00 07 35 */	extsh. r0, r0
/* 8084D18C  40 82 00 1C */	bne lbl_8084D1A8
/* 8084D190  38 60 00 01 */	li r3, 1
/* 8084D194  98 7E 07 72 */	stb r3, 0x772(r30)
/* 8084D198  38 00 00 00 */	li r0, 0
/* 8084D19C  98 1E 07 70 */	stb r0, 0x770(r30)
/* 8084D1A0  98 7E 07 73 */	stb r3, 0x773(r30)
/* 8084D1A4  48 00 00 20 */	b lbl_8084D1C4
lbl_8084D1A8:
/* 8084D1A8  38 80 FF FF */	li r4, -1
/* 8084D1AC  98 9E 07 72 */	stb r4, 0x772(r30)
/* 8084D1B0  80 7E 07 68 */	lwz r3, 0x768(r30)
/* 8084D1B4  A0 63 00 00 */	lhz r3, 0(r3)
/* 8084D1B8  38 03 FF FF */	addi r0, r3, -1
/* 8084D1BC  98 1E 07 70 */	stb r0, 0x770(r30)
/* 8084D1C0  98 9E 07 73 */	stb r4, 0x773(r30)
lbl_8084D1C4:
/* 8084D1C4  80 7E 07 68 */	lwz r3, 0x768(r30)
/* 8084D1C8  88 9E 07 70 */	lbz r4, 0x770(r30)
/* 8084D1CC  7C 84 07 74 */	extsb r4, r4
/* 8084D1D0  4B 80 45 E0 */	b dPath_GetPnt__FPC5dPathi
/* 8084D1D4  C0 03 00 04 */	lfs f0, 4(r3)
/* 8084D1D8  D0 1E 04 BC */	stfs f0, 0x4bc(r30)
/* 8084D1DC  C0 03 00 08 */	lfs f0, 8(r3)
/* 8084D1E0  D0 1E 04 C0 */	stfs f0, 0x4c0(r30)
/* 8084D1E4  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8084D1E8  D0 1E 04 C4 */	stfs f0, 0x4c4(r30)
/* 8084D1EC  C0 1E 04 BC */	lfs f0, 0x4bc(r30)
/* 8084D1F0  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 8084D1F4  C0 1E 04 C0 */	lfs f0, 0x4c0(r30)
/* 8084D1F8  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 8084D1FC  C0 1E 04 C4 */	lfs f0, 0x4c4(r30)
/* 8084D200  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 8084D204  88 7E 07 70 */	lbz r3, 0x770(r30)
/* 8084D208  88 1E 07 72 */	lbz r0, 0x772(r30)
/* 8084D20C  7C 03 02 14 */	add r0, r3, r0
/* 8084D210  98 1E 07 70 */	stb r0, 0x770(r30)
/* 8084D214  80 7E 07 68 */	lwz r3, 0x768(r30)
/* 8084D218  88 9E 07 70 */	lbz r4, 0x770(r30)
/* 8084D21C  7C 84 07 74 */	extsb r4, r4
/* 8084D220  4B 80 45 90 */	b dPath_GetPnt__FPC5dPathi
/* 8084D224  C0 03 00 04 */	lfs f0, 4(r3)
/* 8084D228  D0 1E 06 A4 */	stfs f0, 0x6a4(r30)
/* 8084D22C  C0 03 00 08 */	lfs f0, 8(r3)
/* 8084D230  D0 1E 06 A8 */	stfs f0, 0x6a8(r30)
/* 8084D234  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8084D238  D0 1E 06 AC */	stfs f0, 0x6ac(r30)
/* 8084D23C  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 8084D240  38 9E 06 A4 */	addi r4, r30, 0x6a4
/* 8084D244  4B A2 39 C0 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 8084D248  B0 7E 04 E6 */	sth r3, 0x4e6(r30)
/* 8084D24C  B0 7E 04 DE */	sth r3, 0x4de(r30)
/* 8084D250  28 1F 00 00 */	cmplwi r31, 0
/* 8084D254  41 82 00 E8 */	beq lbl_8084D33C
/* 8084D258  7F C3 F3 78 */	mr r3, r30
/* 8084D25C  4B FF D8 E5 */	bl setMidnaRideOn__8daKago_cFv
/* 8084D260  7F C3 F3 78 */	mr r3, r30
/* 8084D264  4B FF D9 29 */	bl setPlayerRideOn__8daKago_cFv
/* 8084D268  38 00 00 00 */	li r0, 0
/* 8084D26C  98 1E 06 DC */	stb r0, 0x6dc(r30)
/* 8084D270  38 00 00 FF */	li r0, 0xff
/* 8084D274  98 1E 06 DE */	stb r0, 0x6de(r30)
/* 8084D278  38 00 00 01 */	li r0, 1
/* 8084D27C  98 1E 06 DF */	stb r0, 0x6df(r30)
/* 8084D280  88 1E 07 73 */	lbz r0, 0x773(r30)
/* 8084D284  2C 00 00 01 */	cmpwi r0, 1
/* 8084D288  40 82 00 40 */	bne lbl_8084D2C8
/* 8084D28C  88 1E 06 E7 */	lbz r0, 0x6e7(r30)
/* 8084D290  28 00 00 00 */	cmplwi r0, 0
/* 8084D294  40 82 00 34 */	bne lbl_8084D2C8
/* 8084D298  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8084D29C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8084D2A0  38 63 09 58 */	addi r3, r3, 0x958
/* 8084D2A4  38 80 00 09 */	li r4, 9
/* 8084D2A8  4B 7E 75 B8 */	b isSwitch__12dSv_memBit_cCFi
/* 8084D2AC  2C 03 00 00 */	cmpwi r3, 0
/* 8084D2B0  40 82 00 18 */	bne lbl_8084D2C8
/* 8084D2B4  7F C3 F3 78 */	mr r3, r30
/* 8084D2B8  38 80 00 09 */	li r4, 9
/* 8084D2BC  38 A0 00 00 */	li r5, 0
/* 8084D2C0  4B FF D7 D9 */	bl setActionMode__8daKago_cFii
/* 8084D2C4  48 00 00 14 */	b lbl_8084D2D8
lbl_8084D2C8:
/* 8084D2C8  7F C3 F3 78 */	mr r3, r30
/* 8084D2CC  38 80 00 0A */	li r4, 0xa
/* 8084D2D0  38 A0 00 00 */	li r5, 0
/* 8084D2D4  4B FF D7 C5 */	bl setActionMode__8daKago_cFii
lbl_8084D2D8:
/* 8084D2D8  7F C3 F3 78 */	mr r3, r30
/* 8084D2DC  4B FF EF 29 */	bl setFlyAnime__8daKago_cFv
/* 8084D2E0  7F C3 F3 78 */	mr r3, r30
/* 8084D2E4  48 00 53 2D */	bl moveDemoFly__8daKago_cFv
/* 8084D2E8  48 00 00 54 */	b lbl_8084D33C
lbl_8084D2EC:
/* 8084D2EC  2C 00 00 00 */	cmpwi r0, 0
/* 8084D2F0  41 82 00 0C */	beq lbl_8084D2FC
/* 8084D2F4  2C 00 00 02 */	cmpwi r0, 2
/* 8084D2F8  40 82 00 44 */	bne lbl_8084D33C
lbl_8084D2FC:
/* 8084D2FC  7F C3 F3 78 */	mr r3, r30
/* 8084D300  4B FF D8 41 */	bl setMidnaRideOn__8daKago_cFv
/* 8084D304  7F C3 F3 78 */	mr r3, r30
/* 8084D308  4B FF D8 85 */	bl setPlayerRideOn__8daKago_cFv
/* 8084D30C  38 00 00 00 */	li r0, 0
/* 8084D310  98 1E 06 DC */	stb r0, 0x6dc(r30)
/* 8084D314  38 00 00 FF */	li r0, 0xff
/* 8084D318  98 1E 06 DE */	stb r0, 0x6de(r30)
/* 8084D31C  38 00 00 01 */	li r0, 1
/* 8084D320  98 1E 06 DF */	stb r0, 0x6df(r30)
/* 8084D324  7F C3 F3 78 */	mr r3, r30
/* 8084D328  38 80 00 08 */	li r4, 8
/* 8084D32C  38 A0 00 00 */	li r5, 0
/* 8084D330  4B FF D7 69 */	bl setActionMode__8daKago_cFii
/* 8084D334  7F C3 F3 78 */	mr r3, r30
/* 8084D338  48 00 52 79 */	bl executeLanding__8daKago_cFv
lbl_8084D33C:
/* 8084D33C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8084D340  83 C1 00 08 */	lwz r30, 8(r1)
/* 8084D344  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8084D348  7C 08 03 A6 */	mtlr r0
/* 8084D34C  38 21 00 10 */	addi r1, r1, 0x10
/* 8084D350  4E 80 00 20 */	blr 
