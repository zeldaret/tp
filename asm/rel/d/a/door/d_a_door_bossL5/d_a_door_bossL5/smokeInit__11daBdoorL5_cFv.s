lbl_80671A7C:
/* 80671A7C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80671A80  7C 08 02 A6 */	mflr r0
/* 80671A84  90 01 00 24 */	stw r0, 0x24(r1)
/* 80671A88  7C 68 1B 78 */	mr r8, r3
/* 80671A8C  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80671A90  D0 03 05 A4 */	stfs f0, 0x5a4(r3)
/* 80671A94  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80671A98  D0 03 05 A8 */	stfs f0, 0x5a8(r3)
/* 80671A9C  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80671AA0  D0 03 05 AC */	stfs f0, 0x5ac(r3)
/* 80671AA4  A8 03 04 E4 */	lha r0, 0x4e4(r3)
/* 80671AA8  B0 03 05 B0 */	sth r0, 0x5b0(r3)
/* 80671AAC  A8 03 04 E6 */	lha r0, 0x4e6(r3)
/* 80671AB0  B0 03 05 B2 */	sth r0, 0x5b2(r3)
/* 80671AB4  A8 03 04 E8 */	lha r0, 0x4e8(r3)
/* 80671AB8  B0 03 05 B4 */	sth r0, 0x5b4(r3)
/* 80671ABC  88 03 04 E2 */	lbz r0, 0x4e2(r3)
/* 80671AC0  7C 03 07 74 */	extsb r3, r0
/* 80671AC4  38 00 00 00 */	li r0, 0
/* 80671AC8  90 01 00 08 */	stw r0, 8(r1)
/* 80671ACC  90 61 00 0C */	stw r3, 0xc(r1)
/* 80671AD0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80671AD4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80671AD8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80671ADC  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80671AE0  3C 80 00 01 */	lis r4, 0x0001 /* 0x00008156@ha */
/* 80671AE4  38 84 81 56 */	addi r4, r4, 0x8156 /* 0x00008156@l */
/* 80671AE8  38 A8 06 A8 */	addi r5, r8, 0x6a8
/* 80671AEC  38 C8 05 A4 */	addi r6, r8, 0x5a4
/* 80671AF0  38 E8 01 0C */	addi r7, r8, 0x10c
/* 80671AF4  39 08 05 B0 */	addi r8, r8, 0x5b0
/* 80671AF8  39 20 00 00 */	li r9, 0
/* 80671AFC  39 40 00 00 */	li r10, 0
/* 80671B00  4B 9D B5 68 */	b setPoly__13dPa_control_cFUsR13cBgS_PolyInfoPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyziP18dPa_levelEcallBackScPC4cXyz
/* 80671B04  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80671B08  7C 08 03 A6 */	mtlr r0
/* 80671B0C  38 21 00 20 */	addi r1, r1, 0x20
/* 80671B10  4E 80 00 20 */	blr 
