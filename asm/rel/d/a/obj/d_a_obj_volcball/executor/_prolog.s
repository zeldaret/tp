lbl_80D21AA0:
/* 80D21AA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D21AA4  7C 08 02 A6 */	mflr r0
/* 80D21AA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D21AAC  3C 60 80 D2 */	lis r3, data_80D23DC4@ha
/* 80D21AB0  38 63 3D C4 */	addi r3, r3, data_80D23DC4@l
/* 80D21AB4  4B 54 16 98 */	b ModuleConstructorsX
/* 80D21AB8  4B 54 15 D0 */	b ModuleProlog
/* 80D21ABC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D21AC0  7C 08 03 A6 */	mtlr r0
/* 80D21AC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D21AC8  4E 80 00 20 */	blr 
