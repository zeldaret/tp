lbl_802DBEAC:
/* 802DBEAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DBEB0  7C 08 02 A6 */	mflr r0
/* 802DBEB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DBEB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802DBEBC  7C 7F 1B 79 */	or. r31, r3, r3
/* 802DBEC0  41 82 00 3C */	beq lbl_802DBEFC
/* 802DBEC4  80 BF 00 00 */	lwz r5, 0(r31)
/* 802DBEC8  38 C0 00 00 */	li r6, 0
/* 802DBECC  38 60 00 00 */	li r3, 0
/* 802DBED0  48 00 00 10 */	b lbl_802DBEE0
lbl_802DBED4:
/* 802DBED4  90 65 00 04 */	stw r3, 4(r5)
/* 802DBED8  80 A5 00 0C */	lwz r5, 0xc(r5)
/* 802DBEDC  38 C6 00 01 */	addi r6, r6, 1
lbl_802DBEE0:
/* 802DBEE0  80 1F 00 08 */	lwz r0, 8(r31)
/* 802DBEE4  7C 06 00 40 */	cmplw r6, r0
/* 802DBEE8  41 80 FF EC */	blt lbl_802DBED4
/* 802DBEEC  7C 80 07 35 */	extsh. r0, r4
/* 802DBEF0  40 81 00 0C */	ble lbl_802DBEFC
/* 802DBEF4  7F E3 FB 78 */	mr r3, r31
/* 802DBEF8  4B FF 2E 45 */	bl __dl__FPv
lbl_802DBEFC:
/* 802DBEFC  7F E3 FB 78 */	mr r3, r31
/* 802DBF00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802DBF04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DBF08  7C 08 03 A6 */	mtlr r0
/* 802DBF0C  38 21 00 10 */	addi r1, r1, 0x10
/* 802DBF10  4E 80 00 20 */	blr 
