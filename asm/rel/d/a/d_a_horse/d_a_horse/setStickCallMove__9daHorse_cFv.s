lbl_8083AC7C:
/* 8083AC7C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8083AC80  7C 08 02 A6 */	mflr r0
/* 8083AC84  90 01 00 24 */	stw r0, 0x24(r1)
/* 8083AC88  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8083AC8C  7C 7F 1B 78 */	mr r31, r3
/* 8083AC90  3C 80 80 84 */	lis r4, lit_4304@ha
/* 8083AC94  C0 04 55 F4 */	lfs f0, lit_4304@l(r4)
/* 8083AC98  D0 03 17 58 */	stfs f0, 0x1758(r3)
/* 8083AC9C  38 00 00 03 */	li r0, 3
/* 8083ACA0  90 01 00 08 */	stw r0, 8(r1)
/* 8083ACA4  38 81 00 08 */	addi r4, r1, 8
/* 8083ACA8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 8083ACAC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 8083ACB0  80 A5 5D B4 */	lwz r5, 0x5db4(r5)
/* 8083ACB4  38 A5 04 D0 */	addi r5, r5, 0x4d0
/* 8083ACB8  48 00 00 35 */	bl setDemoMoveData__9daHorse_cFPUlPC4cXyz
/* 8083ACBC  A8 1F 16 FC */	lha r0, 0x16fc(r31)
/* 8083ACC0  B0 1F 16 EC */	sth r0, 0x16ec(r31)
/* 8083ACC4  A8 7F 17 16 */	lha r3, 0x1716(r31)
/* 8083ACC8  2C 03 00 00 */	cmpwi r3, 0
/* 8083ACCC  41 82 00 0C */	beq lbl_8083ACD8
/* 8083ACD0  38 03 FF FF */	addi r0, r3, -1
/* 8083ACD4  B0 1F 17 16 */	sth r0, 0x1716(r31)
lbl_8083ACD8:
/* 8083ACD8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8083ACDC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8083ACE0  7C 08 03 A6 */	mtlr r0
/* 8083ACE4  38 21 00 20 */	addi r1, r1, 0x20
/* 8083ACE8  4E 80 00 20 */	blr 
