lbl_80267F88:
/* 80267F88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80267F8C  7C 08 02 A6 */	mflr r0
/* 80267F90  90 01 00 14 */	stw r0, 0x14(r1)
/* 80267F94  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80267F98  7C 7F 1B 78 */	mr r31, r3
/* 80267F9C  4B FF FB B1 */	bl __ct__8cBgS_ChkFv
/* 80267FA0  3C 60 80 3C */	lis r3, __vt__13cBgS_ShdwDraw@ha
/* 80267FA4  38 03 3F C0 */	addi r0, r3, __vt__13cBgS_ShdwDraw@l
/* 80267FA8  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80267FAC  3C 60 80 3A */	lis r3, __vt__8cM3dGAab@ha
/* 80267FB0  38 03 72 18 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80267FB4  90 1F 00 2C */	stw r0, 0x2c(r31)
/* 80267FB8  7F E3 FB 78 */	mr r3, r31
/* 80267FBC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80267FC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80267FC4  7C 08 03 A6 */	mtlr r0
/* 80267FC8  38 21 00 10 */	addi r1, r1, 0x10
/* 80267FCC  4E 80 00 20 */	blr 
