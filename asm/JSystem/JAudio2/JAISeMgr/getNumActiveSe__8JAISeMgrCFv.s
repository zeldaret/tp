lbl_802A08D0:
/* 802A08D0  38 A0 00 00 */	li r5, 0
/* 802A08D4  38 80 00 00 */	li r4, 0
/* 802A08D8  38 00 00 10 */	li r0, 0x10
/* 802A08DC  7C 09 03 A6 */	mtctr r0
lbl_802A08E0:
/* 802A08E0  38 04 00 74 */	addi r0, r4, 0x74
/* 802A08E4  7C 03 00 2E */	lwzx r0, r3, r0
/* 802A08E8  7C A5 02 14 */	add r5, r5, r0
/* 802A08EC  38 84 00 6C */	addi r4, r4, 0x6c
/* 802A08F0  42 00 FF F0 */	bdnz lbl_802A08E0
/* 802A08F4  7C A3 2B 78 */	mr r3, r5
/* 802A08F8  4E 80 00 20 */	blr 
