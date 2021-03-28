lbl_804D5B10:
/* 804D5B10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D5B14  7C 08 02 A6 */	mflr r0
/* 804D5B18  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D5B1C  88 03 05 68 */	lbz r0, 0x568(r3)
/* 804D5B20  2C 00 00 03 */	cmpwi r0, 3
/* 804D5B24  41 82 00 38 */	beq lbl_804D5B5C
/* 804D5B28  40 80 00 14 */	bge lbl_804D5B3C
/* 804D5B2C  2C 00 00 01 */	cmpwi r0, 1
/* 804D5B30  41 82 00 1C */	beq lbl_804D5B4C
/* 804D5B34  40 80 00 20 */	bge lbl_804D5B54
/* 804D5B38  48 00 00 3C */	b lbl_804D5B74
lbl_804D5B3C:
/* 804D5B3C  2C 00 00 05 */	cmpwi r0, 5
/* 804D5B40  41 82 00 24 */	beq lbl_804D5B64
/* 804D5B44  40 80 00 30 */	bge lbl_804D5B74
/* 804D5B48  48 00 00 24 */	b lbl_804D5B6C
lbl_804D5B4C:
/* 804D5B4C  4B FF FC ED */	bl actionCheck__10daAlldie_cFv
/* 804D5B50  48 00 00 28 */	b lbl_804D5B78
lbl_804D5B54:
/* 804D5B54  4B FF FD 35 */	bl actionTimer__10daAlldie_cFv
/* 804D5B58  48 00 00 20 */	b lbl_804D5B78
lbl_804D5B5C:
/* 804D5B5C  4B FF FD DD */	bl actionOrder__10daAlldie_cFv
/* 804D5B60  48 00 00 18 */	b lbl_804D5B78
lbl_804D5B64:
/* 804D5B64  4B FF FE 3D */	bl actionEvent__10daAlldie_cFv
/* 804D5B68  48 00 00 10 */	b lbl_804D5B78
lbl_804D5B6C:
/* 804D5B6C  4B FF FE D9 */	bl actionNext__10daAlldie_cFv
/* 804D5B70  48 00 00 08 */	b lbl_804D5B78
lbl_804D5B74:
/* 804D5B74  4B FF FC BD */	bl actionWait__10daAlldie_cFv
lbl_804D5B78:
/* 804D5B78  38 60 00 01 */	li r3, 1
/* 804D5B7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D5B80  7C 08 03 A6 */	mtlr r0
/* 804D5B84  38 21 00 10 */	addi r1, r1, 0x10
/* 804D5B88  4E 80 00 20 */	blr 
