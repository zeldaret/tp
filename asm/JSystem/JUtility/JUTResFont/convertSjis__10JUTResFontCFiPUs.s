lbl_802E00C4:
/* 802E00C4  54 86 C6 3E */	rlwinm r6, r4, 0x18, 0x18, 0x1f
/* 802E00C8  54 83 06 3E */	clrlwi r3, r4, 0x18
/* 802E00CC  38 E3 FF C0 */	addi r7, r3, -64
/* 802E00D0  2C 07 00 40 */	cmpwi r7, 0x40
/* 802E00D4  41 80 00 08 */	blt lbl_802E00DC
/* 802E00D8  38 E7 FF FF */	addi r7, r7, -1
lbl_802E00DC:
/* 802E00DC  38 00 03 1C */	li r0, 0x31c
/* 802E00E0  28 05 00 00 */	cmplwi r5, 0
/* 802E00E4  41 82 00 08 */	beq lbl_802E00EC
/* 802E00E8  A0 05 00 00 */	lhz r0, 0(r5)
lbl_802E00EC:
/* 802E00EC  54 04 04 3E */	clrlwi r4, r0, 0x10
/* 802E00F0  38 06 FF 78 */	addi r0, r6, -136
/* 802E00F4  1C 60 00 BC */	mulli r3, r0, 0xbc
/* 802E00F8  38 03 FF A2 */	addi r0, r3, -94
/* 802E00FC  7C 60 22 14 */	add r3, r0, r4
/* 802E0100  7C 67 1A 14 */	add r3, r7, r3
/* 802E0104  4E 80 00 20 */	blr 
