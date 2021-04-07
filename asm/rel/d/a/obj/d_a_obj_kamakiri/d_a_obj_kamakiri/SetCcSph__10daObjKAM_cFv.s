lbl_80C35228:
/* 80C35228  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C3522C  7C 08 02 A6 */	mflr r0
/* 80C35230  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C35234  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C35238  7C 7F 1B 78 */	mr r31, r3
/* 80C3523C  38 7F 06 F0 */	addi r3, r31, 0x6f0
/* 80C35240  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80C35244  4B 63 A4 05 */	bl SetC__8cM3dGSphFRC4cXyz
/* 80C35248  38 7F 06 F0 */	addi r3, r31, 0x6f0
/* 80C3524C  3C 80 80 C4 */	lis r4, lit_3789@ha /* 0x80C38450@ha */
/* 80C35250  C0 24 84 50 */	lfs f1, lit_3789@l(r4)  /* 0x80C38450@l */
/* 80C35254  4B 63 A4 B5 */	bl SetR__8cM3dGSphFf
/* 80C35258  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C3525C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C35260  38 63 23 3C */	addi r3, r3, 0x233c
/* 80C35264  38 9F 05 CC */	addi r4, r31, 0x5cc
/* 80C35268  4B 62 F9 41 */	bl Set__4cCcSFP8cCcD_Obj
/* 80C3526C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C35270  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C35274  7C 08 03 A6 */	mtlr r0
/* 80C35278  38 21 00 10 */	addi r1, r1, 0x10
/* 80C3527C  4E 80 00 20 */	blr 
