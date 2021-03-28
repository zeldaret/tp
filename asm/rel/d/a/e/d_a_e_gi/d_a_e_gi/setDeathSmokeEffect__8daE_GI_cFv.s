lbl_806CE0D4:
/* 806CE0D4  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 806CE0D8  7C 08 02 A6 */	mflr r0
/* 806CE0DC  90 01 00 54 */	stw r0, 0x54(r1)
/* 806CE0E0  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 806CE0E4  7C 7F 1B 78 */	mr r31, r3
/* 806CE0E8  3C 60 80 6D */	lis r3, l_HIO@ha
/* 806CE0EC  38 63 11 38 */	addi r3, r3, l_HIO@l
/* 806CE0F0  C0 03 00 08 */	lfs f0, 8(r3)
/* 806CE0F4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 806CE0F8  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 806CE0FC  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 806CE100  3C 60 80 6D */	lis r3, lit_3908@ha
/* 806CE104  C0 03 0E 64 */	lfs f0, lit_3908@l(r3)
/* 806CE108  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 806CE10C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 806CE110  3C 60 80 6D */	lis r3, lit_4296@ha
/* 806CE114  C0 03 0E E4 */	lfs f0, lit_4296@l(r3)
/* 806CE118  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 806CE11C  38 61 00 24 */	addi r3, r1, 0x24
/* 806CE120  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 806CE124  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 806CE128  38 C1 00 18 */	addi r6, r1, 0x18
/* 806CE12C  4B BA 2C 94 */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 806CE130  38 60 00 00 */	li r3, 0
/* 806CE134  90 61 00 08 */	stw r3, 8(r1)
/* 806CE138  38 00 FF FF */	li r0, -1
/* 806CE13C  90 01 00 0C */	stw r0, 0xc(r1)
/* 806CE140  90 61 00 10 */	stw r3, 0x10(r1)
/* 806CE144  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806CE148  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806CE14C  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 806CE150  38 80 00 E7 */	li r4, 0xe7
/* 806CE154  38 BF 07 DC */	addi r5, r31, 0x7dc
/* 806CE158  38 C1 00 24 */	addi r6, r1, 0x24
/* 806CE15C  38 FF 01 0C */	addi r7, r31, 0x10c
/* 806CE160  39 1F 04 E4 */	addi r8, r31, 0x4e4
/* 806CE164  39 21 00 30 */	addi r9, r1, 0x30
/* 806CE168  39 40 00 00 */	li r10, 0
/* 806CE16C  4B 97 EE FC */	b setPoly__13dPa_control_cFUsR13cBgS_PolyInfoPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyziP18dPa_levelEcallBackScPC4cXyz
/* 806CE170  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 806CE174  80 01 00 54 */	lwz r0, 0x54(r1)
/* 806CE178  7C 08 03 A6 */	mtlr r0
/* 806CE17C  38 21 00 50 */	addi r1, r1, 0x50
/* 806CE180  4E 80 00 20 */	blr 
