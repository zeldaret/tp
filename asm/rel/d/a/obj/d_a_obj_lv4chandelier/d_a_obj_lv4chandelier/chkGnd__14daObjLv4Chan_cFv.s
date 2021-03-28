lbl_80C64878:
/* 80C64878  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C6487C  7C 08 02 A6 */	mflr r0
/* 80C64880  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C64884  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C64888  7C 7F 1B 78 */	mr r31, r3
/* 80C6488C  C0 03 23 BC */	lfs f0, 0x23bc(r3)
/* 80C64890  D0 01 00 08 */	stfs f0, 8(r1)
/* 80C64894  C0 23 23 C0 */	lfs f1, 0x23c0(r3)
/* 80C64898  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80C6489C  C0 03 23 C4 */	lfs f0, 0x23c4(r3)
/* 80C648A0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80C648A4  3C 60 80 C6 */	lis r3, lit_4220@ha
/* 80C648A8  C0 03 68 F8 */	lfs f0, lit_4220@l(r3)
/* 80C648AC  EC 01 00 2A */	fadds f0, f1, f0
/* 80C648B0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80C648B4  38 7F 24 28 */	addi r3, r31, 0x2428
/* 80C648B8  38 81 00 08 */	addi r4, r1, 8
/* 80C648BC  4B 60 34 6C */	b SetPos__11cBgS_GndChkFPC4cXyz
/* 80C648C0  80 1F 00 04 */	lwz r0, 4(r31)
/* 80C648C4  90 1F 24 30 */	stw r0, 0x2430(r31)
/* 80C648C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C648CC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C648D0  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80C648D4  38 9F 24 28 */	addi r4, r31, 0x2428
/* 80C648D8  4B 40 FB C8 */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 80C648DC  D0 3F 24 7C */	stfs f1, 0x247c(r31)
/* 80C648E0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C648E4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C648E8  7C 08 03 A6 */	mtlr r0
/* 80C648EC  38 21 00 20 */	addi r1, r1, 0x20
/* 80C648F0  4E 80 00 20 */	blr 
