lbl_80C4A288:
/* 80C4A288  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C4A28C  7C 08 02 A6 */	mflr r0
/* 80C4A290  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C4A294  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C4A298  7C 7F 1B 78 */	mr r31, r3
/* 80C4A29C  38 7F 06 F0 */	addi r3, r31, 0x6f0
/* 80C4A2A0  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80C4A2A4  4B 62 53 A4 */	b SetC__8cM3dGSphFRC4cXyz
/* 80C4A2A8  38 7F 06 F0 */	addi r3, r31, 0x6f0
/* 80C4A2AC  3C 80 80 C5 */	lis r4, lit_3789@ha
/* 80C4A2B0  C0 24 D4 D8 */	lfs f1, lit_3789@l(r4)
/* 80C4A2B4  4B 62 54 54 */	b SetR__8cM3dGSphFf
/* 80C4A2B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C4A2BC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C4A2C0  38 63 23 3C */	addi r3, r3, 0x233c
/* 80C4A2C4  38 9F 05 CC */	addi r4, r31, 0x5cc
/* 80C4A2C8  4B 61 A8 E0 */	b Set__4cCcSFP8cCcD_Obj
/* 80C4A2CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C4A2D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C4A2D4  7C 08 03 A6 */	mtlr r0
/* 80C4A2D8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C4A2DC  4E 80 00 20 */	blr 
