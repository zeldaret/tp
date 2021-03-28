lbl_802DBE74:
/* 802DBE74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DBE78  7C 08 02 A6 */	mflr r0
/* 802DBE7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DBE80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802DBE84  7C 7F 1B 78 */	mr r31, r3
/* 802DBE88  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 802DBE8C  41 82 00 08 */	beq lbl_802DBE94
/* 802DBE90  48 00 00 85 */	bl initiate__10JSUPtrListFv
lbl_802DBE94:
/* 802DBE94  7F E3 FB 78 */	mr r3, r31
/* 802DBE98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802DBE9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DBEA0  7C 08 03 A6 */	mtlr r0
/* 802DBEA4  38 21 00 10 */	addi r1, r1, 0x10
/* 802DBEA8  4E 80 00 20 */	blr 
