lbl_80D1D214:
/* 80D1D214  38 80 00 00 */	li r4, 0
/* 80D1D218  38 C0 00 01 */	li r6, 1
/* 80D1D21C  7C 85 23 78 */	mr r5, r4
/* 80D1D220  38 00 00 03 */	li r0, 3
/* 80D1D224  7C 09 03 A6 */	mtctr r0
lbl_80D1D228:
/* 80D1D228  39 04 07 7C */	addi r8, r4, 0x77c
/* 80D1D22C  7C E3 40 2E */	lwzx r7, r3, r8
/* 80D1D230  28 07 00 00 */	cmplwi r7, 0
/* 80D1D234  41 82 00 38 */	beq lbl_80D1D26C
/* 80D1D238  80 07 00 F4 */	lwz r0, 0xf4(r7)
/* 80D1D23C  60 00 00 01 */	ori r0, r0, 1
/* 80D1D240  90 07 00 F4 */	stw r0, 0xf4(r7)
/* 80D1D244  7C E3 40 2E */	lwzx r7, r3, r8
/* 80D1D248  80 07 00 F4 */	lwz r0, 0xf4(r7)
/* 80D1D24C  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 80D1D250  90 07 00 F4 */	stw r0, 0xf4(r7)
/* 80D1D254  7C E3 40 2E */	lwzx r7, r3, r8
/* 80D1D258  80 07 00 F4 */	lwz r0, 0xf4(r7)
/* 80D1D25C  60 00 00 01 */	ori r0, r0, 1
/* 80D1D260  90 07 00 F4 */	stw r0, 0xf4(r7)
/* 80D1D264  90 C7 00 24 */	stw r6, 0x24(r7)
/* 80D1D268  7C A3 41 2E */	stwx r5, r3, r8
lbl_80D1D26C:
/* 80D1D26C  38 84 00 04 */	addi r4, r4, 4
/* 80D1D270  42 00 FF B8 */	bdnz lbl_80D1D228
/* 80D1D274  4E 80 00 20 */	blr 
