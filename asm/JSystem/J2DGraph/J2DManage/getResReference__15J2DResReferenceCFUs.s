lbl_8030CF10:
/* 8030CF10  A0 A3 00 00 */	lhz r5, 0(r3)
/* 8030CF14  54 80 04 3E */	clrlwi r0, r4, 0x10
/* 8030CF18  7C 05 00 40 */	cmplw r5, r0
/* 8030CF1C  40 81 00 0C */	ble lbl_8030CF28
/* 8030CF20  28 00 FF FF */	cmplwi r0, 0xffff
/* 8030CF24  40 82 00 0C */	bne lbl_8030CF30
lbl_8030CF28:
/* 8030CF28  38 60 00 00 */	li r3, 0
/* 8030CF2C  4E 80 00 20 */	blr 
lbl_8030CF30:
/* 8030CF30  54 80 0B FC */	rlwinm r0, r4, 1, 0xf, 0x1e
/* 8030CF34  7C 83 02 14 */	add r4, r3, r0
/* 8030CF38  A0 04 00 02 */	lhz r0, 2(r4)
/* 8030CF3C  7C 63 02 14 */	add r3, r3, r0
/* 8030CF40  4E 80 00 20 */	blr 
