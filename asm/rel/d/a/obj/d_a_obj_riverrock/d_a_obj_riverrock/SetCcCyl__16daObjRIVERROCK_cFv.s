lbl_80CBC754:
/* 80CBC754  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CBC758  7C 08 02 A6 */	mflr r0
/* 80CBC75C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CBC760  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CBC764  7C 7F 1B 78 */	mr r31, r3
/* 80CBC768  38 7F 07 80 */	addi r3, r31, 0x780
/* 80CBC76C  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80CBC770  4B 5B 2A 6D */	bl SetC__8cM3dGCylFRC4cXyz
/* 80CBC774  38 7F 07 80 */	addi r3, r31, 0x780
/* 80CBC778  3C 80 80 CC */	lis r4, lit_3642@ha /* 0x80CBDAA4@ha */
/* 80CBC77C  C0 24 DA A4 */	lfs f1, lit_3642@l(r4)  /* 0x80CBDAA4@l */
/* 80CBC780  C0 1F 05 C4 */	lfs f0, 0x5c4(r31)
/* 80CBC784  EC 21 00 32 */	fmuls f1, f1, f0
/* 80CBC788  4B 5B 2A 79 */	bl SetR__8cM3dGCylFf
/* 80CBC78C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CBC790  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CBC794  38 63 23 3C */	addi r3, r3, 0x233c
/* 80CBC798  38 9F 06 5C */	addi r4, r31, 0x65c
/* 80CBC79C  4B 5A 84 0D */	bl Set__4cCcSFP8cCcD_Obj
/* 80CBC7A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CBC7A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CBC7A8  7C 08 03 A6 */	mtlr r0
/* 80CBC7AC  38 21 00 10 */	addi r1, r1, 0x10
/* 80CBC7B0  4E 80 00 20 */	blr 
