lbl_80BD41A4:
/* 80BD41A4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BD41A8  7C 08 02 A6 */	mflr r0
/* 80BD41AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BD41B0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80BD41B4  7C 7F 1B 78 */	mr r31, r3
/* 80BD41B8  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80BD41BC  D0 01 00 08 */	stfs f0, 8(r1)
/* 80BD41C0  C0 23 04 D4 */	lfs f1, 0x4d4(r3)
/* 80BD41C4  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80BD41C8  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80BD41CC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80BD41D0  3C 60 80 BD */	lis r3, lit_3670@ha /* 0x80BD4D48@ha */
/* 80BD41D4  C0 03 4D 48 */	lfs f0, lit_3670@l(r3)  /* 0x80BD4D48@l */
/* 80BD41D8  EC 01 00 2A */	fadds f0, f1, f0
/* 80BD41DC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80BD41E0  38 7F 07 30 */	addi r3, r31, 0x730
/* 80BD41E4  38 81 00 08 */	addi r4, r1, 8
/* 80BD41E8  4B 69 AF F5 */	bl SetC__8cM3dGCylFRC4cXyz
/* 80BD41EC  38 7F 07 30 */	addi r3, r31, 0x730
/* 80BD41F0  3C 80 80 BD */	lis r4, lit_3671@ha /* 0x80BD4D4C@ha */
/* 80BD41F4  C0 24 4D 4C */	lfs f1, lit_3671@l(r4)  /* 0x80BD4D4C@l */
/* 80BD41F8  4B 69 B0 09 */	bl SetR__8cM3dGCylFf
/* 80BD41FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BD4200  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BD4204  38 63 23 3C */	addi r3, r3, 0x233c
/* 80BD4208  38 9F 06 0C */	addi r4, r31, 0x60c
/* 80BD420C  4B 69 09 9D */	bl Set__4cCcSFP8cCcD_Obj
/* 80BD4210  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80BD4214  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BD4218  7C 08 03 A6 */	mtlr r0
/* 80BD421C  38 21 00 20 */	addi r1, r1, 0x20
/* 80BD4220  4E 80 00 20 */	blr 
