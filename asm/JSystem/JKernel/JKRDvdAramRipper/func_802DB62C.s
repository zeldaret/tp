lbl_802DB62C:
/* 802DB62C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DB630  7C 08 02 A6 */	mflr r0
/* 802DB634  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DB638  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802DB63C  93 C1 00 08 */	stw r30, 8(r1)
/* 802DB640  7C 7E 1B 79 */	or. r30, r3, r3
/* 802DB644  7C 9F 23 78 */	mr r31, r4
/* 802DB648  41 82 00 1C */	beq lbl_802DB664
/* 802DB64C  38 80 00 00 */	li r4, 0
/* 802DB650  48 00 08 5D */	bl __dt__10JSUPtrListFv
/* 802DB654  7F E0 07 35 */	extsh. r0, r31
/* 802DB658  40 81 00 0C */	ble lbl_802DB664
/* 802DB65C  7F C3 F3 78 */	mr r3, r30
/* 802DB660  4B FF 36 DD */	bl __dl__FPv
lbl_802DB664:
/* 802DB664  7F C3 F3 78 */	mr r3, r30
/* 802DB668  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802DB66C  83 C1 00 08 */	lwz r30, 8(r1)
/* 802DB670  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DB674  7C 08 03 A6 */	mtlr r0
/* 802DB678  38 21 00 10 */	addi r1, r1, 0x10
/* 802DB67C  4E 80 00 20 */	blr 
