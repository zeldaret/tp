lbl_802E50BC:
/* 802E50BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E50C0  7C 08 02 A6 */	mflr r0
/* 802E50C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E50C8  80 8D 8F D0 */	lwz r4, sManager__6JUTXfb(r13)
/* 802E50CC  28 04 00 00 */	cmplwi r4, 0
/* 802E50D0  41 82 00 64 */	beq lbl_802E5134
/* 802E50D4  38 60 00 00 */	li r3, 0
/* 802E50D8  98 6D 8F C4 */	stb r3, data_80451544(r13)
/* 802E50DC  80 04 00 10 */	lwz r0, 0x10(r4)
/* 802E50E0  2C 00 00 01 */	cmpwi r0, 1
/* 802E50E4  40 82 00 50 */	bne lbl_802E5134
/* 802E50E8  80 04 00 1C */	lwz r0, 0x1c(r4)
/* 802E50EC  2C 00 00 01 */	cmpwi r0, 1
/* 802E50F0  40 82 00 44 */	bne lbl_802E5134
/* 802E50F4  90 64 00 1C */	stw r3, 0x1c(r4)
/* 802E50F8  A8 A4 00 16 */	lha r5, 0x16(r4)
/* 802E50FC  7C A0 07 35 */	extsh. r0, r5
/* 802E5100  41 80 00 0C */	blt lbl_802E510C
/* 802E5104  54 A0 10 3A */	slwi r0, r5, 2
/* 802E5108  7C 64 00 2E */	lwzx r3, r4, r0
lbl_802E510C:
/* 802E510C  28 03 00 00 */	cmplwi r3, 0
/* 802E5110  41 82 00 24 */	beq lbl_802E5134
/* 802E5114  7C A0 07 35 */	extsh. r0, r5
/* 802E5118  41 80 00 10 */	blt lbl_802E5128
/* 802E511C  54 A0 10 3A */	slwi r0, r5, 2
/* 802E5120  7C 64 00 2E */	lwzx r3, r4, r0
/* 802E5124  48 00 00 08 */	b lbl_802E512C
lbl_802E5128:
/* 802E5128  38 60 00 00 */	li r3, 0
lbl_802E512C:
/* 802E512C  48 06 86 99 */	bl VISetNextFrameBuffer
/* 802E5130  48 06 85 65 */	bl VIFlush
lbl_802E5134:
/* 802E5134  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E5138  7C 08 03 A6 */	mtlr r0
/* 802E513C  38 21 00 10 */	addi r1, r1, 0x10
/* 802E5140  4E 80 00 20 */	blr 
