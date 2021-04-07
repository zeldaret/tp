lbl_80BE6328:
/* 80BE6328  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE632C  7C 08 02 A6 */	mflr r0
/* 80BE6330  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE6334  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BE6338  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BE633C  41 82 00 10 */	beq lbl_80BE634C
/* 80BE6340  7C 80 07 35 */	extsh. r0, r4
/* 80BE6344  40 81 00 08 */	ble lbl_80BE634C
/* 80BE6348  4B 6E 89 F5 */	bl __dl__FPv
lbl_80BE634C:
/* 80BE634C  7F E3 FB 78 */	mr r3, r31
/* 80BE6350  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BE6354  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE6358  7C 08 03 A6 */	mtlr r0
/* 80BE635C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE6360  4E 80 00 20 */	blr 
