lbl_8007B0E4:
/* 8007B0E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8007B0E8  7C 08 02 A6 */	mflr r0
/* 8007B0EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8007B0F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8007B0F4  7C 7F 1B 78 */	mr r31, r3
/* 8007B0F8  A0 84 00 00 */	lhz r4, 0(r4)
/* 8007B0FC  48 00 08 35 */	bl GetTriGrp__4cBgWCFi
/* 8007B100  80 9F 00 A0 */	lwz r4, 0xa0(r31)
/* 8007B104  80 84 00 24 */	lwz r4, 0x24(r4)
/* 8007B108  1C 03 00 34 */	mulli r0, r3, 0x34
/* 8007B10C  7C 64 02 14 */	add r3, r4, r0
/* 8007B110  A0 03 00 24 */	lhz r0, 0x24(r3)
/* 8007B114  28 00 FF FF */	cmplwi r0, 0xffff
/* 8007B118  41 82 00 18 */	beq lbl_8007B130
/* 8007B11C  1C 00 00 34 */	mulli r0, r0, 0x34
/* 8007B120  7C 64 02 14 */	add r3, r4, r0
/* 8007B124  A0 03 00 24 */	lhz r0, 0x24(r3)
/* 8007B128  28 00 FF FF */	cmplwi r0, 0xffff
/* 8007B12C  40 82 00 0C */	bne lbl_8007B138
lbl_8007B130:
/* 8007B130  38 60 00 FF */	li r3, 0xff
/* 8007B134  48 00 00 1C */	b lbl_8007B150
lbl_8007B138:
/* 8007B138  1C 00 00 34 */	mulli r0, r0, 0x34
/* 8007B13C  7C 64 02 14 */	add r3, r4, r0
/* 8007B140  A0 63 00 2A */	lhz r3, 0x2a(r3)
/* 8007B144  2C 03 00 FF */	cmpwi r3, 0xff
/* 8007B148  41 80 00 08 */	blt lbl_8007B150
/* 8007B14C  38 60 00 FF */	li r3, 0xff
lbl_8007B150:
/* 8007B150  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8007B154  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8007B158  7C 08 03 A6 */	mtlr r0
/* 8007B15C  38 21 00 10 */	addi r1, r1, 0x10
/* 8007B160  4E 80 00 20 */	blr 
