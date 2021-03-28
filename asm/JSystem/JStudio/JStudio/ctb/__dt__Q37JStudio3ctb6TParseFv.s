lbl_8028137C:
/* 8028137C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80281380  7C 08 02 A6 */	mflr r0
/* 80281384  90 01 00 14 */	stw r0, 0x14(r1)
/* 80281388  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8028138C  93 C1 00 08 */	stw r30, 8(r1)
/* 80281390  7C 7E 1B 79 */	or. r30, r3, r3
/* 80281394  7C 9F 23 78 */	mr r31, r4
/* 80281398  41 82 00 28 */	beq lbl_802813C0
/* 8028139C  3C 80 80 3C */	lis r4, __vt__Q37JStudio3ctb6TParse@ha
/* 802813A0  38 04 48 78 */	addi r0, r4, __vt__Q37JStudio3ctb6TParse@l
/* 802813A4  90 1E 00 00 */	stw r0, 0(r30)
/* 802813A8  38 80 00 00 */	li r4, 0
/* 802813AC  48 05 B5 1D */	bl __dt__Q37JGadget6binary19TParse_header_blockFv
/* 802813B0  7F E0 07 35 */	extsh. r0, r31
/* 802813B4  40 81 00 0C */	ble lbl_802813C0
/* 802813B8  7F C3 F3 78 */	mr r3, r30
/* 802813BC  48 04 D9 81 */	bl __dl__FPv
lbl_802813C0:
/* 802813C0  7F C3 F3 78 */	mr r3, r30
/* 802813C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802813C8  83 C1 00 08 */	lwz r30, 8(r1)
/* 802813CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802813D0  7C 08 03 A6 */	mtlr r0
/* 802813D4  38 21 00 10 */	addi r1, r1, 0x10
/* 802813D8  4E 80 00 20 */	blr 
