lbl_80C5C7B8:
/* 80C5C7B8  38 80 00 00 */	li r4, 0
/* 80C5C7BC  38 E0 00 01 */	li r7, 1
/* 80C5C7C0  7C 85 23 78 */	mr r5, r4
/* 80C5C7C4  38 00 00 04 */	li r0, 4
/* 80C5C7C8  7C 09 03 A6 */	mtctr r0
lbl_80C5C7CC:
/* 80C5C7CC  39 04 05 80 */	addi r8, r4, 0x580
/* 80C5C7D0  7C C3 40 2E */	lwzx r6, r3, r8
/* 80C5C7D4  28 06 00 00 */	cmplwi r6, 0
/* 80C5C7D8  41 82 00 28 */	beq lbl_80C5C800
/* 80C5C7DC  80 06 00 F4 */	lwz r0, 0xf4(r6)
/* 80C5C7E0  60 00 00 01 */	ori r0, r0, 1
/* 80C5C7E4  90 06 00 F4 */	stw r0, 0xf4(r6)
/* 80C5C7E8  90 E6 00 24 */	stw r7, 0x24(r6)
/* 80C5C7EC  7C C3 40 2E */	lwzx r6, r3, r8
/* 80C5C7F0  80 06 00 F4 */	lwz r0, 0xf4(r6)
/* 80C5C7F4  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 80C5C7F8  90 06 00 F4 */	stw r0, 0xf4(r6)
/* 80C5C7FC  7C A3 41 2E */	stwx r5, r3, r8
lbl_80C5C800:
/* 80C5C800  38 84 00 04 */	addi r4, r4, 4
/* 80C5C804  42 00 FF C8 */	bdnz lbl_80C5C7CC
/* 80C5C808  38 60 00 01 */	li r3, 1
/* 80C5C80C  4E 80 00 20 */	blr 
