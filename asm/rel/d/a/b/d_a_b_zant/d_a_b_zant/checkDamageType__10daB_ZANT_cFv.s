lbl_8063E79C:
/* 8063E79C  80 83 0C 50 */	lwz r4, 0xc50(r3)
/* 8063E7A0  80 A4 00 10 */	lwz r5, 0x10(r4)
/* 8063E7A4  54 A4 04 63 */	rlwinm. r4, r5, 0, 0x11, 0x11
/* 8063E7A8  41 82 00 18 */	beq lbl_8063E7C0
/* 8063E7AC  88 03 06 FB */	lbz r0, 0x6fb(r3)
/* 8063E7B0  28 00 00 03 */	cmplwi r0, 3
/* 8063E7B4  40 82 00 0C */	bne lbl_8063E7C0
/* 8063E7B8  38 60 00 04 */	li r3, 4
/* 8063E7BC  4E 80 00 20 */	blr 
lbl_8063E7C0:
/* 8063E7C0  28 04 00 00 */	cmplwi r4, 0
/* 8063E7C4  40 82 00 1C */	bne lbl_8063E7E0
/* 8063E7C8  54 A0 03 19 */	rlwinm. r0, r5, 0, 0xc, 0xc
/* 8063E7CC  40 82 00 14 */	bne lbl_8063E7E0
/* 8063E7D0  54 A0 04 A5 */	rlwinm. r0, r5, 0, 0x12, 0x12
/* 8063E7D4  40 82 00 0C */	bne lbl_8063E7E0
/* 8063E7D8  54 A0 06 F7 */	rlwinm. r0, r5, 0, 0x1b, 0x1b
/* 8063E7DC  41 82 00 0C */	beq lbl_8063E7E8
lbl_8063E7E0:
/* 8063E7E0  38 60 00 03 */	li r3, 3
/* 8063E7E4  4E 80 00 20 */	blr 
lbl_8063E7E8:
/* 8063E7E8  54 A0 03 DF */	rlwinm. r0, r5, 0, 0xf, 0xf
/* 8063E7EC  40 82 00 0C */	bne lbl_8063E7F8
/* 8063E7F0  54 A0 06 73 */	rlwinm. r0, r5, 0, 0x19, 0x19
/* 8063E7F4  41 82 00 0C */	beq lbl_8063E800
lbl_8063E7F8:
/* 8063E7F8  38 60 00 02 */	li r3, 2
/* 8063E7FC  4E 80 00 20 */	blr 
lbl_8063E800:
/* 8063E800  54 A0 01 4A */	rlwinm r0, r5, 0, 5, 5
/* 8063E804  7C 00 00 34 */	cntlzw r0, r0
/* 8063E808  54 03 D9 7E */	srwi r3, r0, 5
/* 8063E80C  4E 80 00 20 */	blr 
