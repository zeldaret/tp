lbl_80C93A88:
/* 80C93A88  38 80 00 00 */	li r4, 0
/* 80C93A8C  38 E0 00 01 */	li r7, 1
/* 80C93A90  7C 85 23 78 */	mr r5, r4
/* 80C93A94  38 00 00 04 */	li r0, 4
/* 80C93A98  7C 09 03 A6 */	mtctr r0
lbl_80C93A9C:
/* 80C93A9C  39 04 07 04 */	addi r8, r4, 0x704
/* 80C93AA0  7C C3 40 2E */	lwzx r6, r3, r8
/* 80C93AA4  28 06 00 00 */	cmplwi r6, 0
/* 80C93AA8  41 82 00 28 */	beq lbl_80C93AD0
/* 80C93AAC  80 06 00 F4 */	lwz r0, 0xf4(r6)
/* 80C93AB0  60 00 00 01 */	ori r0, r0, 1
/* 80C93AB4  90 06 00 F4 */	stw r0, 0xf4(r6)
/* 80C93AB8  90 E6 00 24 */	stw r7, 0x24(r6)
/* 80C93ABC  7C C3 40 2E */	lwzx r6, r3, r8
/* 80C93AC0  80 06 00 F4 */	lwz r0, 0xf4(r6)
/* 80C93AC4  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 80C93AC8  90 06 00 F4 */	stw r0, 0xf4(r6)
/* 80C93ACC  7C A3 41 2E */	stwx r5, r3, r8
lbl_80C93AD0:
/* 80C93AD0  38 84 00 04 */	addi r4, r4, 4
/* 80C93AD4  42 00 FF C8 */	bdnz lbl_80C93A9C
/* 80C93AD8  4E 80 00 20 */	blr 
