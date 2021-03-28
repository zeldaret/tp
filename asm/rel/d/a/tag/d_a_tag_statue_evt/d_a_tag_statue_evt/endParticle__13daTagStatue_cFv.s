lbl_805A7B24:
/* 805A7B24  38 80 00 00 */	li r4, 0
/* 805A7B28  38 E0 00 01 */	li r7, 1
/* 805A7B2C  7C 85 23 78 */	mr r5, r4
/* 805A7B30  38 00 00 03 */	li r0, 3
/* 805A7B34  7C 09 03 A6 */	mtctr r0
lbl_805A7B38:
/* 805A7B38  39 04 05 84 */	addi r8, r4, 0x584
/* 805A7B3C  7C C3 40 2E */	lwzx r6, r3, r8
/* 805A7B40  28 06 00 00 */	cmplwi r6, 0
/* 805A7B44  41 82 00 28 */	beq lbl_805A7B6C
/* 805A7B48  80 06 00 F4 */	lwz r0, 0xf4(r6)
/* 805A7B4C  60 00 00 01 */	ori r0, r0, 1
/* 805A7B50  90 06 00 F4 */	stw r0, 0xf4(r6)
/* 805A7B54  90 E6 00 24 */	stw r7, 0x24(r6)
/* 805A7B58  7C C3 40 2E */	lwzx r6, r3, r8
/* 805A7B5C  80 06 00 F4 */	lwz r0, 0xf4(r6)
/* 805A7B60  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 805A7B64  90 06 00 F4 */	stw r0, 0xf4(r6)
/* 805A7B68  7C A3 41 2E */	stwx r5, r3, r8
lbl_805A7B6C:
/* 805A7B6C  38 84 00 04 */	addi r4, r4, 4
/* 805A7B70  42 00 FF C8 */	bdnz lbl_805A7B38
/* 805A7B74  4E 80 00 20 */	blr 
