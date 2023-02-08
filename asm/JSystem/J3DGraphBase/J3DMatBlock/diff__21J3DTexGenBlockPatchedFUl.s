lbl_8031AC68:
/* 8031AC68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8031AC6C  7C 08 02 A6 */	mflr r0
/* 8031AC70  90 01 00 14 */	stw r0, 0x14(r1)
/* 8031AC74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8031AC78  93 C1 00 08 */	stw r30, 8(r1)
/* 8031AC7C  7C 7E 1B 78 */	mr r30, r3
/* 8031AC80  7C 9F 23 78 */	mr r31, r4
/* 8031AC84  54 80 C7 3F */	rlwinm. r0, r4, 0x18, 0x1c, 0x1f
/* 8031AC88  41 82 00 30 */	beq lbl_8031ACB8
/* 8031AC8C  81 83 00 00 */	lwz r12, 0(r3)
/* 8031AC90  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 8031AC94  7D 89 03 A6 */	mtctr r12
/* 8031AC98  4E 80 04 21 */	bctrl 
/* 8031AC9C  57 E0 04 E7 */	rlwinm. r0, r31, 0, 0x13, 0x13
/* 8031ACA0  41 82 00 18 */	beq lbl_8031ACB8
/* 8031ACA4  7F C3 F3 78 */	mr r3, r30
/* 8031ACA8  81 9E 00 00 */	lwz r12, 0(r30)
/* 8031ACAC  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8031ACB0  7D 89 03 A6 */	mtctr r12
/* 8031ACB4  4E 80 04 21 */	bctrl 
lbl_8031ACB8:
/* 8031ACB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8031ACBC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8031ACC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8031ACC4  7C 08 03 A6 */	mtlr r0
/* 8031ACC8  38 21 00 10 */	addi r1, r1, 0x10
/* 8031ACCC  4E 80 00 20 */	blr 
