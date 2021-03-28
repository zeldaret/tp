lbl_800E0B58:
/* 800E0B58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800E0B5C  7C 08 02 A6 */	mflr r0
/* 800E0B60  90 01 00 14 */	stw r0, 0x14(r1)
/* 800E0B64  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800E0B68  7C 7F 1B 78 */	mr r31, r3
/* 800E0B6C  38 60 00 00 */	li r3, 0
/* 800E0B70  A0 1F 2F DC */	lhz r0, 0x2fdc(r31)
/* 800E0B74  28 00 00 40 */	cmplwi r0, 0x40
/* 800E0B78  41 82 00 0C */	beq lbl_800E0B84
/* 800E0B7C  28 00 01 02 */	cmplwi r0, 0x102
/* 800E0B80  40 82 00 14 */	bne lbl_800E0B94
lbl_800E0B84:
/* 800E0B84  A0 1F 1F BC */	lhz r0, 0x1fbc(r31)
/* 800E0B88  28 00 00 54 */	cmplwi r0, 0x54
/* 800E0B8C  40 82 00 08 */	bne lbl_800E0B94
/* 800E0B90  38 60 00 01 */	li r3, 1
lbl_800E0B94:
/* 800E0B94  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800E0B98  41 82 00 10 */	beq lbl_800E0BA8
/* 800E0B9C  7F E3 FB 78 */	mr r3, r31
/* 800E0BA0  4B FF FE FD */	bl checkUpperItemActionBoomerang__9daAlink_cFv
/* 800E0BA4  48 00 00 2C */	b lbl_800E0BD0
lbl_800E0BA8:
/* 800E0BA8  7F E3 FB 78 */	mr r3, r31
/* 800E0BAC  4B FD 7D 85 */	bl checkReadyItem__9daAlink_cFv
/* 800E0BB0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800E0BB4  41 82 00 1C */	beq lbl_800E0BD0
/* 800E0BB8  7F E3 FB 78 */	mr r3, r31
/* 800E0BBC  4B FD 1A 79 */	bl itemTrigger__9daAlink_cFv
/* 800E0BC0  2C 03 00 00 */	cmpwi r3, 0
/* 800E0BC4  41 82 00 0C */	beq lbl_800E0BD0
/* 800E0BC8  7F E3 FB 78 */	mr r3, r31
/* 800E0BCC  4B FF F9 91 */	bl setBoomerangReadyAnime__9daAlink_cFv
lbl_800E0BD0:
/* 800E0BD0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800E0BD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800E0BD8  7C 08 03 A6 */	mtlr r0
/* 800E0BDC  38 21 00 10 */	addi r1, r1, 0x10
/* 800E0BE0  4E 80 00 20 */	blr 
