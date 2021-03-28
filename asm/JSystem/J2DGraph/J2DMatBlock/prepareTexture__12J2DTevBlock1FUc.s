lbl_802EBC0C:
/* 802EBC0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802EBC10  7C 08 02 A6 */	mflr r0
/* 802EBC14  90 01 00 14 */	stw r0, 0x14(r1)
/* 802EBC18  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802EBC1C  93 C1 00 08 */	stw r30, 8(r1)
/* 802EBC20  7C 7E 1B 78 */	mr r30, r3
/* 802EBC24  7C 9F 23 78 */	mr r31, r4
/* 802EBC28  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 802EBC2C  40 82 00 0C */	bne lbl_802EBC38
/* 802EBC30  38 60 00 01 */	li r3, 1
/* 802EBC34  48 00 00 74 */	b lbl_802EBCA8
lbl_802EBC38:
/* 802EBC38  80 1E 00 50 */	lwz r0, 0x50(r30)
/* 802EBC3C  28 00 00 00 */	cmplwi r0, 0
/* 802EBC40  40 82 00 54 */	bne lbl_802EBC94
/* 802EBC44  38 60 00 40 */	li r3, 0x40
/* 802EBC48  4B FE 30 05 */	bl __nw__FUl
/* 802EBC4C  28 03 00 00 */	cmplwi r3, 0
/* 802EBC50  41 82 00 1C */	beq lbl_802EBC6C
/* 802EBC54  88 03 00 3B */	lbz r0, 0x3b(r3)
/* 802EBC58  54 00 07 BC */	rlwinm r0, r0, 0, 0x1e, 0x1e
/* 802EBC5C  98 03 00 3B */	stb r0, 0x3b(r3)
/* 802EBC60  38 00 00 00 */	li r0, 0
/* 802EBC64  90 03 00 28 */	stw r0, 0x28(r3)
/* 802EBC68  90 03 00 20 */	stw r0, 0x20(r3)
lbl_802EBC6C:
/* 802EBC6C  90 7E 00 50 */	stw r3, 0x50(r30)
/* 802EBC70  80 1E 00 50 */	lwz r0, 0x50(r30)
/* 802EBC74  28 00 00 00 */	cmplwi r0, 0
/* 802EBC78  40 82 00 0C */	bne lbl_802EBC84
/* 802EBC7C  38 60 00 00 */	li r3, 0
/* 802EBC80  48 00 00 28 */	b lbl_802EBCA8
lbl_802EBC84:
/* 802EBC84  88 1E 00 5C */	lbz r0, 0x5c(r30)
/* 802EBC88  54 00 06 30 */	rlwinm r0, r0, 0, 0x18, 0x18
/* 802EBC8C  60 00 00 01 */	ori r0, r0, 1
/* 802EBC90  98 1E 00 5C */	stb r0, 0x5c(r30)
lbl_802EBC94:
/* 802EBC94  57 E4 06 3E */	clrlwi r4, r31, 0x18
/* 802EBC98  38 00 00 01 */	li r0, 1
/* 802EBC9C  38 60 FF FF */	li r3, -1
/* 802EBCA0  7C 04 00 10 */	subfc r0, r4, r0
/* 802EBCA4  7C 63 01 90 */	subfze r3, r3
lbl_802EBCA8:
/* 802EBCA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802EBCAC  83 C1 00 08 */	lwz r30, 8(r1)
/* 802EBCB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802EBCB4  7C 08 03 A6 */	mtlr r0
/* 802EBCB8  38 21 00 10 */	addi r1, r1, 0x10
/* 802EBCBC  4E 80 00 20 */	blr 
