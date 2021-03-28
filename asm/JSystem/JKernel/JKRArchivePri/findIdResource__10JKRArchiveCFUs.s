lbl_802D6770:
/* 802D6770  54 86 04 3E */	clrlwi r6, r4, 0x10
/* 802D6774  28 06 FF FF */	cmplwi r6, 0xffff
/* 802D6778  41 82 00 74 */	beq lbl_802D67EC
/* 802D677C  80 A3 00 44 */	lwz r5, 0x44(r3)
/* 802D6780  80 E5 00 08 */	lwz r7, 8(r5)
/* 802D6784  7C 06 38 40 */	cmplw r6, r7
/* 802D6788  40 80 00 30 */	bge lbl_802D67B8
/* 802D678C  80 A3 00 4C */	lwz r5, 0x4c(r3)
/* 802D6790  1C 06 00 14 */	mulli r0, r6, 0x14
/* 802D6794  7C A5 02 14 */	add r5, r5, r0
/* 802D6798  A0 05 00 00 */	lhz r0, 0(r5)
/* 802D679C  7C 00 30 40 */	cmplw r0, r6
/* 802D67A0  40 82 00 18 */	bne lbl_802D67B8
/* 802D67A4  80 05 00 04 */	lwz r0, 4(r5)
/* 802D67A8  54 00 47 FF */	rlwinm. r0, r0, 8, 0x1f, 0x1f
/* 802D67AC  41 82 00 0C */	beq lbl_802D67B8
/* 802D67B0  7C A3 2B 78 */	mr r3, r5
/* 802D67B4  4E 80 00 20 */	blr 
lbl_802D67B8:
/* 802D67B8  80 63 00 4C */	lwz r3, 0x4c(r3)
/* 802D67BC  54 84 04 3E */	clrlwi r4, r4, 0x10
/* 802D67C0  7C E9 03 A6 */	mtctr r7
/* 802D67C4  28 07 00 00 */	cmplwi r7, 0
/* 802D67C8  40 81 00 24 */	ble lbl_802D67EC
lbl_802D67CC:
/* 802D67CC  A0 03 00 00 */	lhz r0, 0(r3)
/* 802D67D0  7C 00 20 40 */	cmplw r0, r4
/* 802D67D4  40 82 00 10 */	bne lbl_802D67E4
/* 802D67D8  80 03 00 04 */	lwz r0, 4(r3)
/* 802D67DC  54 00 47 FF */	rlwinm. r0, r0, 8, 0x1f, 0x1f
/* 802D67E0  4C 82 00 20 */	bnelr 
lbl_802D67E4:
/* 802D67E4  38 63 00 14 */	addi r3, r3, 0x14
/* 802D67E8  42 00 FF E4 */	bdnz lbl_802D67CC
lbl_802D67EC:
/* 802D67EC  38 60 00 00 */	li r3, 0
/* 802D67F0  4E 80 00 20 */	blr 
