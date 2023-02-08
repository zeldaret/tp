lbl_8097B04C:
/* 8097B04C  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 8097B050  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 8097B054  81 24 00 B0 */	lwz r9, 0xb0(r4)
/* 8097B058  55 20 06 BE */	clrlwi r0, r9, 0x1a
/* 8097B05C  7C 05 00 00 */	cmpw r5, r0
/* 8097B060  40 82 00 C0 */	bne lbl_8097B120
/* 8097B064  80 A3 0B 84 */	lwz r5, 0xb84(r3)
/* 8097B068  80 05 00 B0 */	lwz r0, 0xb0(r5)
/* 8097B06C  54 06 A6 3E */	rlwinm r6, r0, 0x14, 0x18, 0x1f
/* 8097B070  38 E0 00 0A */	li r7, 0xa
/* 8097B074  7C 06 3B D6 */	divw r0, r6, r7
/* 8097B078  1C A0 00 3C */	mulli r5, r0, 0x3c
/* 8097B07C  7C 00 39 D6 */	mullw r0, r0, r7
/* 8097B080  7C 00 30 50 */	subf r0, r0, r6
/* 8097B084  1C 00 00 0A */	mulli r0, r0, 0xa
/* 8097B088  7C 05 02 14 */	add r0, r5, r0
/* 8097B08C  54 08 04 3E */	clrlwi r8, r0, 0x10
/* 8097B090  55 26 A6 3E */	rlwinm r6, r9, 0x14, 0x18, 0x1f
/* 8097B094  7C 06 3B D6 */	divw r0, r6, r7
/* 8097B098  1C A0 00 3C */	mulli r5, r0, 0x3c
/* 8097B09C  7C 00 39 D6 */	mullw r0, r0, r7
/* 8097B0A0  7C 00 30 50 */	subf r0, r0, r6
/* 8097B0A4  1C 00 00 0A */	mulli r0, r0, 0xa
/* 8097B0A8  7C 05 02 14 */	add r0, r5, r0
/* 8097B0AC  54 05 04 3E */	clrlwi r5, r0, 0x10
/* 8097B0B0  7C A9 2B 78 */	mr r9, r5
/* 8097B0B4  7C 05 40 00 */	cmpw r5, r8
/* 8097B0B8  41 81 00 08 */	bgt lbl_8097B0C0
/* 8097B0BC  39 25 05 A0 */	addi r9, r5, 0x5a0
lbl_8097B0C0:
/* 8097B0C0  7C 09 40 00 */	cmpw r9, r8
/* 8097B0C4  40 81 00 5C */	ble lbl_8097B120
/* 8097B0C8  80 A3 0B 88 */	lwz r5, 0xb88(r3)
/* 8097B0CC  28 05 00 00 */	cmplwi r5, 0
/* 8097B0D0  40 82 00 0C */	bne lbl_8097B0DC
/* 8097B0D4  90 83 0B 88 */	stw r4, 0xb88(r3)
/* 8097B0D8  48 00 00 48 */	b lbl_8097B120
lbl_8097B0DC:
/* 8097B0DC  80 05 00 B0 */	lwz r0, 0xb0(r5)
/* 8097B0E0  54 07 A6 3E */	rlwinm r7, r0, 0x14, 0x18, 0x1f
/* 8097B0E4  38 C0 00 0A */	li r6, 0xa
/* 8097B0E8  7C 07 33 D6 */	divw r0, r7, r6
/* 8097B0EC  1C A0 00 3C */	mulli r5, r0, 0x3c
/* 8097B0F0  7C 00 31 D6 */	mullw r0, r0, r6
/* 8097B0F4  7C 00 38 50 */	subf r0, r0, r7
/* 8097B0F8  1C 00 00 0A */	mulli r0, r0, 0xa
/* 8097B0FC  7C 05 02 14 */	add r0, r5, r0
/* 8097B100  54 05 04 3E */	clrlwi r5, r0, 0x10
/* 8097B104  7C A0 2B 78 */	mr r0, r5
/* 8097B108  7C 05 40 00 */	cmpw r5, r8
/* 8097B10C  41 81 00 08 */	bgt lbl_8097B114
/* 8097B110  38 05 05 A0 */	addi r0, r5, 0x5a0
lbl_8097B114:
/* 8097B114  7C 09 00 00 */	cmpw r9, r0
/* 8097B118  40 80 00 08 */	bge lbl_8097B120
/* 8097B11C  90 83 0B 88 */	stw r4, 0xb88(r3)
lbl_8097B120:
/* 8097B120  38 60 00 00 */	li r3, 0
/* 8097B124  4E 80 00 20 */	blr 
