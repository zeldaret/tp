lbl_8009B688:
/* 8009B688  38 A0 00 00 */	li r5, 0
/* 8009B68C  38 03 FF F6 */	addi r0, r3, -10
/* 8009B690  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8009B694  28 00 00 03 */	cmplwi r0, 3
/* 8009B698  40 81 00 30 */	ble lbl_8009B6C8
/* 8009B69C  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 8009B6A0  20 04 00 70 */	subfic r0, r4, 0x70
/* 8009B6A4  7C 00 00 34 */	cntlzw r0, r0
/* 8009B6A8  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 8009B6AC  20 04 00 71 */	subfic r0, r4, 0x71
/* 8009B6B0  7C 00 00 34 */	cntlzw r0, r0
/* 8009B6B4  54 00 DE 3E */	rlwinm r0, r0, 0x1b, 0x18, 0x1f
/* 8009B6B8  7C 60 03 79 */	or. r0, r3, r0
/* 8009B6BC  40 82 00 0C */	bne lbl_8009B6C8
/* 8009B6C0  28 04 00 72 */	cmplwi r4, 0x72
/* 8009B6C4  40 82 00 08 */	bne lbl_8009B6CC
lbl_8009B6C8:
/* 8009B6C8  38 A0 00 01 */	li r5, 1
lbl_8009B6CC:
/* 8009B6CC  7C A3 2B 78 */	mr r3, r5
/* 8009B6D0  4E 80 00 20 */	blr 
