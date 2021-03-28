lbl_802DBCF8:
/* 802DBCF8  88 83 00 00 */	lbz r4, 0(r3)
/* 802DBCFC  2C 04 00 59 */	cmpwi r4, 0x59
/* 802DBD00  40 82 00 40 */	bne lbl_802DBD40
/* 802DBD04  88 03 00 01 */	lbz r0, 1(r3)
/* 802DBD08  2C 00 00 61 */	cmpwi r0, 0x61
/* 802DBD0C  40 82 00 34 */	bne lbl_802DBD40
/* 802DBD10  88 03 00 03 */	lbz r0, 3(r3)
/* 802DBD14  2C 00 00 30 */	cmpwi r0, 0x30
/* 802DBD18  40 82 00 28 */	bne lbl_802DBD40
/* 802DBD1C  88 03 00 02 */	lbz r0, 2(r3)
/* 802DBD20  2C 00 00 79 */	cmpwi r0, 0x79
/* 802DBD24  40 82 00 0C */	bne lbl_802DBD30
/* 802DBD28  38 60 00 01 */	li r3, 1
/* 802DBD2C  4E 80 00 20 */	blr 
lbl_802DBD30:
/* 802DBD30  2C 00 00 7A */	cmpwi r0, 0x7a
/* 802DBD34  40 82 00 0C */	bne lbl_802DBD40
/* 802DBD38  38 60 00 02 */	li r3, 2
/* 802DBD3C  4E 80 00 20 */	blr 
lbl_802DBD40:
/* 802DBD40  2C 04 00 41 */	cmpwi r4, 0x41
/* 802DBD44  40 82 00 24 */	bne lbl_802DBD68
/* 802DBD48  88 03 00 01 */	lbz r0, 1(r3)
/* 802DBD4C  2C 00 00 53 */	cmpwi r0, 0x53
/* 802DBD50  40 82 00 18 */	bne lbl_802DBD68
/* 802DBD54  88 03 00 02 */	lbz r0, 2(r3)
/* 802DBD58  2C 00 00 52 */	cmpwi r0, 0x52
/* 802DBD5C  40 82 00 0C */	bne lbl_802DBD68
/* 802DBD60  38 60 00 03 */	li r3, 3
/* 802DBD64  4E 80 00 20 */	blr 
lbl_802DBD68:
/* 802DBD68  38 60 00 00 */	li r3, 0
/* 802DBD6C  4E 80 00 20 */	blr 
