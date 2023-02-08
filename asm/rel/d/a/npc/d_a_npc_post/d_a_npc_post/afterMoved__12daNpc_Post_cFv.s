lbl_80AAA124:
/* 80AAA124  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AAA128  7C 08 02 A6 */	mflr r0
/* 80AAA12C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AAA130  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80AAA134  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80AAA138  7C 7E 1B 78 */	mr r30, r3
/* 80AAA13C  3C 60 80 AB */	lis r3, m__18daNpc_Post_Param_c@ha /* 0x80AAD1EC@ha */
/* 80AAA140  3B E3 D1 EC */	addi r31, r3, m__18daNpc_Post_Param_c@l /* 0x80AAD1EC@l */
/* 80AAA144  C0 3F 00 B8 */	lfs f1, 0xb8(r31)
/* 80AAA148  C0 1E 0D F4 */	lfs f0, 0xdf4(r30)
/* 80AAA14C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80AAA150  40 82 00 7C */	bne lbl_80AAA1CC
/* 80AAA154  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80AAA158  D0 01 00 08 */	stfs f0, 8(r1)
/* 80AAA15C  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80AAA160  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80AAA164  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80AAA168  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80AAA16C  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80AAA170  EC 01 00 2A */	fadds f0, f1, f0
/* 80AAA174  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80AAA178  38 7E 09 30 */	addi r3, r30, 0x930
/* 80AAA17C  38 81 00 08 */	addi r4, r1, 8
/* 80AAA180  4B 7B DB A9 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 80AAA184  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AAA188  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AAA18C  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80AAA190  38 9E 09 30 */	addi r4, r30, 0x930
/* 80AAA194  4B 5C A3 0D */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 80AAA198  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80AAA19C  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 80AAA1A0  FC 20 08 18 */	frsp f1, f1
/* 80AAA1A4  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80AAA1A8  41 82 00 0C */	beq lbl_80AAA1B4
/* 80AAA1AC  D0 3E 04 D4 */	stfs f1, 0x4d4(r30)
/* 80AAA1B0  48 00 00 0C */	b lbl_80AAA1BC
lbl_80AAA1B4:
/* 80AAA1B4  C0 1E 10 08 */	lfs f0, 0x1008(r30)
/* 80AAA1B8  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
lbl_80AAA1BC:
/* 80AAA1BC  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 80AAA1C0  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80AAA1C4  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80AAA1C8  D0 1E 04 C0 */	stfs f0, 0x4c0(r30)
lbl_80AAA1CC:
/* 80AAA1CC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80AAA1D0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80AAA1D4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AAA1D8  7C 08 03 A6 */	mtlr r0
/* 80AAA1DC  38 21 00 20 */	addi r1, r1, 0x20
/* 80AAA1E0  4E 80 00 20 */	blr 
