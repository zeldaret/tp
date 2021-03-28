lbl_80AEB45C:
/* 80AEB45C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AEB460  7C 08 02 A6 */	mflr r0
/* 80AEB464  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AEB468  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AEB46C  7C 7F 1B 78 */	mr r31, r3
/* 80AEB470  38 7F 09 C0 */	addi r3, r31, 0x9c0
/* 80AEB474  3C 80 80 AF */	lis r4, lit_4024@ha
/* 80AEB478  C0 24 BC 2C */	lfs f1, lit_4024@l(r4)
/* 80AEB47C  4B 78 3D 84 */	b SetR__8cM3dGCylFf
/* 80AEB480  38 7F 09 C0 */	addi r3, r31, 0x9c0
/* 80AEB484  3C 80 80 AF */	lis r4, lit_4024@ha
/* 80AEB488  C0 24 BC 2C */	lfs f1, lit_4024@l(r4)
/* 80AEB48C  4B 78 3D 6C */	b SetH__8cM3dGCylFf
/* 80AEB490  38 7F 09 C0 */	addi r3, r31, 0x9c0
/* 80AEB494  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80AEB498  4B 78 3D 44 */	b SetC__8cM3dGCylFRC4cXyz
/* 80AEB49C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80AEB4A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80AEB4A4  38 63 23 3C */	addi r3, r3, 0x233c
/* 80AEB4A8  38 9F 08 9C */	addi r4, r31, 0x89c
/* 80AEB4AC  4B 77 96 FC */	b Set__4cCcSFP8cCcD_Obj
/* 80AEB4B0  38 60 00 01 */	li r3, 1
/* 80AEB4B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AEB4B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AEB4BC  7C 08 03 A6 */	mtlr r0
/* 80AEB4C0  38 21 00 10 */	addi r1, r1, 0x10
/* 80AEB4C4  4E 80 00 20 */	blr 
