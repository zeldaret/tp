lbl_80327CA4:
/* 80327CA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80327CA8  7C 08 02 A6 */	mflr r0
/* 80327CAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80327CB0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80327CB4  7C 7F 1B 78 */	mr r31, r3
/* 80327CB8  81 83 00 00 */	lwz r12, 0(r3)
/* 80327CBC  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80327CC0  7D 89 03 A6 */	mtctr r12
/* 80327CC4  4E 80 04 21 */	bctrl 
/* 80327CC8  7F E3 FB 78 */	mr r3, r31
/* 80327CCC  81 9F 00 00 */	lwz r12, 0(r31)
/* 80327CD0  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80327CD4  7D 89 03 A6 */	mtctr r12
/* 80327CD8  4E 80 04 21 */	bctrl 
/* 80327CDC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80327CE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80327CE4  7C 08 03 A6 */	mtlr r0
/* 80327CE8  38 21 00 10 */	addi r1, r1, 0x10
/* 80327CEC  4E 80 00 20 */	blr 
