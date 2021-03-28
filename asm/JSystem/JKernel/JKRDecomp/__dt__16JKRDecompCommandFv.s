lbl_802DBDC0:
/* 802DBDC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DBDC4  7C 08 02 A6 */	mflr r0
/* 802DBDC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DBDCC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802DBDD0  7C 7F 1B 79 */	or. r31, r3, r3
/* 802DBDD4  41 82 00 10 */	beq lbl_802DBDE4
/* 802DBDD8  7C 80 07 35 */	extsh. r0, r4
/* 802DBDDC  40 81 00 08 */	ble lbl_802DBDE4
/* 802DBDE0  4B FF 2F 5D */	bl __dl__FPv
lbl_802DBDE4:
/* 802DBDE4  7F E3 FB 78 */	mr r3, r31
/* 802DBDE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802DBDEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DBDF0  7C 08 03 A6 */	mtlr r0
/* 802DBDF4  38 21 00 10 */	addi r1, r1, 0x10
/* 802DBDF8  4E 80 00 20 */	blr 
