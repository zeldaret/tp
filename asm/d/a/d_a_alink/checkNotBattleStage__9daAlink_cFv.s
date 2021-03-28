lbl_800C0594:
/* 800C0594  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800C0598  7C 08 02 A6 */	mflr r0
/* 800C059C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800C05A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800C05A4  3B E0 00 00 */	li r31, 0
/* 800C05A8  4B FF FF 79 */	bl checkRoom__9daAlink_cFv
/* 800C05AC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800C05B0  40 82 00 10 */	bne lbl_800C05C0
/* 800C05B4  4B FF FD A5 */	bl checkCastleTown__9daAlink_cFv
/* 800C05B8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800C05BC  41 82 00 08 */	beq lbl_800C05C4
lbl_800C05C0:
/* 800C05C0  3B E0 00 01 */	li r31, 1
lbl_800C05C4:
/* 800C05C4  7F E3 FB 78 */	mr r3, r31
/* 800C05C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800C05CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800C05D0  7C 08 03 A6 */	mtlr r0
/* 800C05D4  38 21 00 10 */	addi r1, r1, 0x10
/* 800C05D8  4E 80 00 20 */	blr 
