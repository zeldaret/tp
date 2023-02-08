lbl_80AB6358:
/* 80AB6358  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AB635C  7C 08 02 A6 */	mflr r0
/* 80AB6360  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AB6364  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AB6368  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AB636C  41 82 00 10 */	beq lbl_80AB637C
/* 80AB6370  7C 80 07 35 */	extsh. r0, r4
/* 80AB6374  40 81 00 08 */	ble lbl_80AB637C
/* 80AB6378  4B 81 89 C5 */	bl __dl__FPv
lbl_80AB637C:
/* 80AB637C  7F E3 FB 78 */	mr r3, r31
/* 80AB6380  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AB6384  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AB6388  7C 08 03 A6 */	mtlr r0
/* 80AB638C  38 21 00 10 */	addi r1, r1, 0x10
/* 80AB6390  4E 80 00 20 */	blr 
