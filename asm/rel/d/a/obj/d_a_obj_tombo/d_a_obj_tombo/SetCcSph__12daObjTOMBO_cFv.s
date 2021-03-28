lbl_80D1926C:
/* 80D1926C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D19270  7C 08 02 A6 */	mflr r0
/* 80D19274  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D19278  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D1927C  7C 7F 1B 78 */	mr r31, r3
/* 80D19280  38 7F 06 F0 */	addi r3, r31, 0x6f0
/* 80D19284  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80D19288  4B 55 63 C0 */	b SetC__8cM3dGSphFRC4cXyz
/* 80D1928C  38 7F 06 F0 */	addi r3, r31, 0x6f0
/* 80D19290  3C 80 80 D2 */	lis r4, lit_3789@ha
/* 80D19294  C0 24 B7 24 */	lfs f1, lit_3789@l(r4)
/* 80D19298  4B 55 64 70 */	b SetR__8cM3dGSphFf
/* 80D1929C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D192A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D192A4  38 63 23 3C */	addi r3, r3, 0x233c
/* 80D192A8  38 9F 05 CC */	addi r4, r31, 0x5cc
/* 80D192AC  4B 54 B8 FC */	b Set__4cCcSFP8cCcD_Obj
/* 80D192B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D192B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D192B8  7C 08 03 A6 */	mtlr r0
/* 80D192BC  38 21 00 10 */	addi r1, r1, 0x10
/* 80D192C0  4E 80 00 20 */	blr 
