lbl_802EE9A4:
/* 802EE9A4  88 03 00 B0 */	lbz r0, 0xb0(r3)
/* 802EE9A8  54 07 06 30 */	rlwinm r7, r0, 0, 0x18, 0x18
/* 802EE9AC  54 00 06 7E */	clrlwi r0, r0, 0x19
/* 802EE9B0  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 802EE9B4  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 802EE9B8  41 82 00 30 */	beq lbl_802EE9E8
/* 802EE9BC  38 A0 00 01 */	li r5, 1
/* 802EE9C0  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 802EE9C4  7C A4 00 30 */	slw r4, r5, r0
/* 802EE9C8  38 04 FF FF */	addi r0, r4, -1
/* 802EE9CC  88 A3 00 B0 */	lbz r5, 0xb0(r3)
/* 802EE9D0  7C A4 00 38 */	and r4, r5, r0
/* 802EE9D4  7C A0 00 78 */	andc r0, r5, r0
/* 802EE9D8  54 00 08 3C */	slwi r0, r0, 1
/* 802EE9DC  7C 80 03 78 */	or r0, r4, r0
/* 802EE9E0  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 802EE9E4  48 00 00 38 */	b lbl_802EEA1C
lbl_802EE9E8:
/* 802EE9E8  54 88 06 3E */	clrlwi r8, r4, 0x18
/* 802EE9EC  89 23 00 B0 */	lbz r9, 0xb0(r3)
/* 802EE9F0  38 C0 00 01 */	li r6, 1
/* 802EE9F4  7C C4 40 30 */	slw r4, r6, r8
/* 802EE9F8  38 04 FF FF */	addi r0, r4, -1
/* 802EE9FC  7D 25 00 38 */	and r5, r9, r0
/* 802EEA00  38 08 00 01 */	addi r0, r8, 1
/* 802EEA04  7C C4 00 30 */	slw r4, r6, r0
/* 802EEA08  38 04 FF FF */	addi r0, r4, -1
/* 802EEA0C  7D 20 00 78 */	andc r0, r9, r0
/* 802EEA10  7C 00 0E 70 */	srawi r0, r0, 1
/* 802EEA14  7C A0 03 78 */	or r0, r5, r0
/* 802EEA18  98 03 00 B0 */	stb r0, 0xb0(r3)
lbl_802EEA1C:
/* 802EEA1C  88 03 00 B0 */	lbz r0, 0xb0(r3)
/* 802EEA20  7C 00 3B 78 */	or r0, r0, r7
/* 802EEA24  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 802EEA28  4E 80 00 20 */	blr 
