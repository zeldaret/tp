lbl_801CEA38:
/* 801CEA38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801CEA3C  7C 08 02 A6 */	mflr r0
/* 801CEA40  90 01 00 14 */	stw r0, 0x14(r1)
/* 801CEA44  55 00 06 3E */	clrlwi r0, r8, 0x18
/* 801CEA48  28 00 00 E0 */	cmplwi r0, 0xe0
/* 801CEA4C  54 C9 06 36 */	rlwinm r9, r6, 0, 0x18, 0x1b
/* 801CEA50  50 A9 25 2E */	rlwimi r9, r5, 4, 0x14, 0x17
/* 801CEA54  50 E9 E7 3E */	rlwimi r9, r7, 0x1c, 0x1c, 0x1f
/* 801CEA58  51 09 3C 66 */	rlwimi r9, r8, 7, 0x11, 0x13
/* 801CEA5C  41 80 00 14 */	blt lbl_801CEA70
/* 801CEA60  54 C0 15 B4 */	rlwinm r0, r6, 2, 0x16, 0x1a
/* 801CEA64  50 A0 3C 6A */	rlwimi r0, r5, 7, 0x11, 0x15
/* 801CEA68  50 E0 EE FE */	rlwimi r0, r7, 0x1d, 0x1b, 0x1f
/* 801CEA6C  60 09 80 00 */	ori r9, r0, 0x8000
lbl_801CEA70:
/* 801CEA70  80 03 00 C8 */	lwz r0, 0xc8(r3)
/* 801CEA74  54 84 18 38 */	slwi r4, r4, 3
/* 801CEA78  7C A0 22 14 */	add r5, r0, r4
/* 801CEA7C  B1 25 00 00 */	sth r9, 0(r5)
/* 801CEA80  B1 25 00 02 */	sth r9, 2(r5)
/* 801CEA84  B1 25 00 04 */	sth r9, 4(r5)
/* 801CEA88  B1 25 00 06 */	sth r9, 6(r5)
/* 801CEA8C  80 03 00 C8 */	lwz r0, 0xc8(r3)
/* 801CEA90  7C 60 22 14 */	add r3, r0, r4
/* 801CEA94  38 80 00 08 */	li r4, 8
/* 801CEA98  48 16 CB 45 */	bl DCStoreRange
/* 801CEA9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801CEAA0  7C 08 03 A6 */	mtlr r0
/* 801CEAA4  38 21 00 10 */	addi r1, r1, 0x10
/* 801CEAA8  4E 80 00 20 */	blr 
