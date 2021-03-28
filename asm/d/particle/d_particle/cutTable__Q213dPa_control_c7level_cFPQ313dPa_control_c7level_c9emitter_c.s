lbl_8004BA74:
/* 8004BA74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8004BA78  7C 08 02 A6 */	mflr r0
/* 8004BA7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8004BA80  80 A4 00 10 */	lwz r5, 0x10(r4)
/* 8004BA84  80 C4 00 14 */	lwz r6, 0x14(r4)
/* 8004BA88  28 05 00 00 */	cmplwi r5, 0
/* 8004BA8C  40 82 00 18 */	bne lbl_8004BAA4
/* 8004BA90  80 04 00 00 */	lwz r0, 0(r4)
/* 8004BA94  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 8004BA98  7C 63 02 14 */	add r3, r3, r0
/* 8004BA9C  90 C3 0C 08 */	stw r6, 0xc08(r3)
/* 8004BAA0  48 00 00 08 */	b lbl_8004BAA8
lbl_8004BAA4:
/* 8004BAA4  90 C5 00 14 */	stw r6, 0x14(r5)
lbl_8004BAA8:
/* 8004BAA8  28 06 00 00 */	cmplwi r6, 0
/* 8004BAAC  41 82 00 08 */	beq lbl_8004BAB4
/* 8004BAB0  90 A6 00 10 */	stw r5, 0x10(r6)
lbl_8004BAB4:
/* 8004BAB4  7C 83 23 78 */	mr r3, r4
/* 8004BAB8  4B FF FA F5 */	bl cleanup__Q313dPa_control_c7level_c9emitter_cFv
/* 8004BABC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8004BAC0  7C 08 03 A6 */	mtlr r0
/* 8004BAC4  38 21 00 10 */	addi r1, r1, 0x10
/* 8004BAC8  4E 80 00 20 */	blr 
