lbl_802A9158:
/* 802A9158  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A915C  7C 08 02 A6 */	mflr r0
/* 802A9160  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A9164  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A9168  93 C1 00 08 */	stw r30, 8(r1)
/* 802A916C  7C 7E 1B 79 */	or. r30, r3, r3
/* 802A9170  7C 9F 23 78 */	mr r31, r4
/* 802A9174  41 82 00 28 */	beq lbl_802A919C
/* 802A9178  3C 80 80 3D */	lis r4, __vt__Q28JMessage6TParse@ha /* 0x803C9C94@ha */
/* 802A917C  38 04 9C 94 */	addi r0, r4, __vt__Q28JMessage6TParse@l /* 0x803C9C94@l */
/* 802A9180  90 1E 00 00 */	stw r0, 0(r30)
/* 802A9184  38 80 00 00 */	li r4, 0
/* 802A9188  48 03 37 41 */	bl __dt__Q37JGadget6binary19TParse_header_blockFv
/* 802A918C  7F E0 07 35 */	extsh. r0, r31
/* 802A9190  40 81 00 0C */	ble lbl_802A919C
/* 802A9194  7F C3 F3 78 */	mr r3, r30
/* 802A9198  48 02 5B A5 */	bl __dl__FPv
lbl_802A919C:
/* 802A919C  7F C3 F3 78 */	mr r3, r30
/* 802A91A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A91A4  83 C1 00 08 */	lwz r30, 8(r1)
/* 802A91A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A91AC  7C 08 03 A6 */	mtlr r0
/* 802A91B0  38 21 00 10 */	addi r1, r1, 0x10
/* 802A91B4  4E 80 00 20 */	blr 
