lbl_802A1AF4:
/* 802A1AF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A1AF8  7C 08 02 A6 */	mflr r0
/* 802A1AFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A1B00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A1B04  93 C1 00 08 */	stw r30, 8(r1)
/* 802A1B08  7C 7E 1B 79 */	or. r30, r3, r3
/* 802A1B0C  7C 9F 23 78 */	mr r31, r4
/* 802A1B10  41 82 00 1C */	beq lbl_802A1B2C
/* 802A1B14  38 80 00 00 */	li r4, 0
/* 802A1B18  4B FE ED 49 */	bl __dt__17JASGenericMemPoolFv
/* 802A1B1C  7F E0 07 35 */	extsh. r0, r31
/* 802A1B20  40 81 00 0C */	ble lbl_802A1B2C
/* 802A1B24  7F C3 F3 78 */	mr r3, r30
/* 802A1B28  48 02 D2 15 */	bl __dl__FPv
lbl_802A1B2C:
/* 802A1B2C  7F C3 F3 78 */	mr r3, r30
/* 802A1B30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A1B34  83 C1 00 08 */	lwz r30, 8(r1)
/* 802A1B38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A1B3C  7C 08 03 A6 */	mtlr r0
/* 802A1B40  38 21 00 10 */	addi r1, r1, 0x10
/* 802A1B44  4E 80 00 20 */	blr 
