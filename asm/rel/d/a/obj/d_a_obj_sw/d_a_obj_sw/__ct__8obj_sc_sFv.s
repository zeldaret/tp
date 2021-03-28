lbl_80CF2FA8:
/* 80CF2FA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CF2FAC  7C 08 02 A6 */	mflr r0
/* 80CF2FB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CF2FB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CF2FB8  7C 7F 1B 78 */	mr r31, r3
/* 80CF2FBC  38 7F 00 44 */	addi r3, r31, 0x44
/* 80CF2FC0  4B 5C B8 84 */	b __ct__16Z2SoundObjSimpleFv
/* 80CF2FC4  7F E3 FB 78 */	mr r3, r31
/* 80CF2FC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CF2FCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CF2FD0  7C 08 03 A6 */	mtlr r0
/* 80CF2FD4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CF2FD8  4E 80 00 20 */	blr 
