lbl_802E1AFC:
/* 802E1AFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E1B00  7C 08 02 A6 */	mflr r0
/* 802E1B04  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E1B08  7C 66 1B 78 */	mr r6, r3
/* 802E1B0C  2C 04 00 00 */	cmpwi r4, 0
/* 802E1B10  41 80 00 40 */	blt lbl_802E1B50
/* 802E1B14  80 06 00 1C */	lwz r0, 0x1c(r6)
/* 802E1B18  7C 05 00 40 */	cmplw r5, r0
/* 802E1B1C  41 80 00 34 */	blt lbl_802E1B50
/* 802E1B20  38 00 00 01 */	li r0, 1
/* 802E1B24  98 06 00 11 */	stb r0, 0x11(r6)
/* 802E1B28  7C 66 22 14 */	add r3, r6, r4
/* 802E1B2C  98 03 00 48 */	stb r0, 0x48(r3)
/* 802E1B30  81 86 00 4C */	lwz r12, 0x4c(r6)
/* 802E1B34  28 0C 00 00 */	cmplwi r12, 0
/* 802E1B38  41 82 00 18 */	beq lbl_802E1B50
/* 802E1B3C  7C 83 23 78 */	mr r3, r4
/* 802E1B40  7C C4 33 78 */	mr r4, r6
/* 802E1B44  80 A6 00 50 */	lwz r5, 0x50(r6)
/* 802E1B48  7D 89 03 A6 */	mtctr r12
/* 802E1B4C  4E 80 04 21 */	bctrl 
lbl_802E1B50:
/* 802E1B50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E1B54  7C 08 03 A6 */	mtlr r0
/* 802E1B58  38 21 00 10 */	addi r1, r1, 0x10
/* 802E1B5C  4E 80 00 20 */	blr 
