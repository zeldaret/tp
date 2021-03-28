lbl_80284698:
/* 80284698  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028469C  7C 08 02 A6 */	mflr r0
/* 802846A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802846A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802846A8  93 C1 00 08 */	stw r30, 8(r1)
/* 802846AC  7C 7E 1B 79 */	or. r30, r3, r3
/* 802846B0  7C 9F 23 78 */	mr r31, r4
/* 802846B4  41 82 00 34 */	beq lbl_802846E8
/* 802846B8  3C 60 80 3C */	lis r3, __vt__Q37JStudio3fvb8TControl@ha
/* 802846BC  38 03 4A 44 */	addi r0, r3, __vt__Q37JStudio3fvb8TControl@l
/* 802846C0  90 1E 00 00 */	stw r0, 0(r30)
/* 802846C4  34 1E 00 08 */	addic. r0, r30, 8
/* 802846C8  41 82 00 10 */	beq lbl_802846D8
/* 802846CC  38 7E 00 08 */	addi r3, r30, 8
/* 802846D0  38 80 00 00 */	li r4, 0
/* 802846D4  48 05 83 49 */	bl __dt__Q27JGadget13TNodeLinkListFv
lbl_802846D8:
/* 802846D8  7F E0 07 35 */	extsh. r0, r31
/* 802846DC  40 81 00 0C */	ble lbl_802846E8
/* 802846E0  7F C3 F3 78 */	mr r3, r30
/* 802846E4  48 04 A6 59 */	bl __dl__FPv
lbl_802846E8:
/* 802846E8  7F C3 F3 78 */	mr r3, r30
/* 802846EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802846F0  83 C1 00 08 */	lwz r30, 8(r1)
/* 802846F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802846F8  7C 08 03 A6 */	mtlr r0
/* 802846FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80284700  4E 80 00 20 */	blr 
