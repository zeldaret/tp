lbl_802A7AF8:
/* 802A7AF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A7AFC  7C 08 02 A6 */	mflr r0
/* 802A7B00  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A7B04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A7B08  7C 7F 1B 79 */	or. r31, r3, r3
/* 802A7B0C  41 82 00 1C */	beq lbl_802A7B28
/* 802A7B10  3C A0 80 3D */	lis r5, __vt__Q28JMessage10TReference@ha
/* 802A7B14  38 05 9C 6C */	addi r0, r5, __vt__Q28JMessage10TReference@l
/* 802A7B18  90 1F 00 00 */	stw r0, 0(r31)
/* 802A7B1C  7C 80 07 35 */	extsh. r0, r4
/* 802A7B20  40 81 00 08 */	ble lbl_802A7B28
/* 802A7B24  48 02 72 19 */	bl __dl__FPv
lbl_802A7B28:
/* 802A7B28  7F E3 FB 78 */	mr r3, r31
/* 802A7B2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A7B30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A7B34  7C 08 03 A6 */	mtlr r0
/* 802A7B38  38 21 00 10 */	addi r1, r1, 0x10
/* 802A7B3C  4E 80 00 20 */	blr 
