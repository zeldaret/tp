lbl_802FD814:
/* 802FD814  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802FD818  7C 08 02 A6 */	mflr r0
/* 802FD81C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802FD820  38 E0 00 00 */	li r7, 0
/* 802FD824  88 C3 01 08 */	lbz r6, 0x108(r3)
/* 802FD828  48 00 00 1C */	b lbl_802FD844
lbl_802FD82C:
/* 802FD82C  54 E5 15 BA */	rlwinm r5, r7, 2, 0x16, 0x1d
/* 802FD830  38 05 01 00 */	addi r0, r5, 0x100
/* 802FD834  7C 03 00 2E */	lwzx r0, r3, r0
/* 802FD838  7C 00 20 40 */	cmplw r0, r4
/* 802FD83C  41 82 00 14 */	beq lbl_802FD850
/* 802FD840  38 E7 00 01 */	addi r7, r7, 1
lbl_802FD844:
/* 802FD844  54 E0 06 3E */	clrlwi r0, r7, 0x18
/* 802FD848  7C 00 30 40 */	cmplw r0, r6
/* 802FD84C  41 80 FF E0 */	blt lbl_802FD82C
lbl_802FD850:
/* 802FD850  7C E4 3B 78 */	mr r4, r7
/* 802FD854  81 83 00 00 */	lwz r12, 0(r3)
/* 802FD858  81 8C 00 D8 */	lwz r12, 0xd8(r12)
/* 802FD85C  7D 89 03 A6 */	mtctr r12
/* 802FD860  4E 80 04 21 */	bctrl 
/* 802FD864  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802FD868  7C 08 03 A6 */	mtlr r0
/* 802FD86C  38 21 00 10 */	addi r1, r1, 0x10
/* 802FD870  4E 80 00 20 */	blr 
