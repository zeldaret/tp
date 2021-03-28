lbl_802BF898:
/* 802BF898  80 E4 00 10 */	lwz r7, 0x10(r4)
/* 802BF89C  54 E0 07 39 */	rlwinm. r0, r7, 0, 0x1c, 0x1c
/* 802BF8A0  41 82 00 1C */	beq lbl_802BF8BC
/* 802BF8A4  80 A3 00 3C */	lwz r5, 0x3c(r3)
/* 802BF8A8  88 04 00 16 */	lbz r0, 0x16(r4)
/* 802BF8AC  7C 05 00 00 */	cmpw r5, r0
/* 802BF8B0  41 82 00 3C */	beq lbl_802BF8EC
/* 802BF8B4  38 60 00 00 */	li r3, 0
/* 802BF8B8  4E 80 00 20 */	blr 
lbl_802BF8BC:
/* 802BF8BC  54 E0 06 31 */	rlwinm. r0, r7, 0, 0x18, 0x18
/* 802BF8C0  41 82 00 2C */	beq lbl_802BF8EC
/* 802BF8C4  88 C4 00 16 */	lbz r6, 0x16(r4)
/* 802BF8C8  80 A3 00 3C */	lwz r5, 0x3c(r3)
/* 802BF8CC  88 84 00 19 */	lbz r4, 0x19(r4)
/* 802BF8D0  7C 05 23 D6 */	divw r0, r5, r4
/* 802BF8D4  7C 00 21 D6 */	mullw r0, r0, r4
/* 802BF8D8  7C 00 28 50 */	subf r0, r0, r5
/* 802BF8DC  7C 06 00 00 */	cmpw r6, r0
/* 802BF8E0  41 82 00 0C */	beq lbl_802BF8EC
/* 802BF8E4  38 60 00 00 */	li r3, 0
/* 802BF8E8  4E 80 00 20 */	blr 
lbl_802BF8EC:
/* 802BF8EC  88 03 00 44 */	lbz r0, 0x44(r3)
/* 802BF8F0  28 00 00 00 */	cmplwi r0, 0
/* 802BF8F4  41 82 00 14 */	beq lbl_802BF908
/* 802BF8F8  54 E0 07 FF */	clrlwi. r0, r7, 0x1f
/* 802BF8FC  41 82 00 1C */	beq lbl_802BF918
/* 802BF900  38 60 00 00 */	li r3, 0
/* 802BF904  4E 80 00 20 */	blr 
lbl_802BF908:
/* 802BF908  54 E0 07 BD */	rlwinm. r0, r7, 0, 0x1e, 0x1e
/* 802BF90C  41 82 00 0C */	beq lbl_802BF918
/* 802BF910  38 60 00 00 */	li r3, 0
/* 802BF914  4E 80 00 20 */	blr 
lbl_802BF918:
/* 802BF918  38 60 00 01 */	li r3, 1
/* 802BF91C  4E 80 00 20 */	blr 
