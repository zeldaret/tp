lbl_802D7B90:
/* 802D7B90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D7B94  7C 08 02 A6 */	mflr r0
/* 802D7B98  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D7B9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D7BA0  93 C1 00 08 */	stw r30, 8(r1)
/* 802D7BA4  7C 7E 1B 79 */	or. r30, r3, r3
/* 802D7BA8  7C 9F 23 78 */	mr r31, r4
/* 802D7BAC  41 82 00 28 */	beq lbl_802D7BD4
/* 802D7BB0  3C 80 80 3D */	lis r4, __vt__7JKRFile@ha
/* 802D7BB4  38 04 C3 28 */	addi r0, r4, __vt__7JKRFile@l
/* 802D7BB8  90 1E 00 00 */	stw r0, 0(r30)
/* 802D7BBC  38 80 00 00 */	li r4, 0
/* 802D7BC0  4B FF 99 25 */	bl __dt__11JKRDisposerFv
/* 802D7BC4  7F E0 07 35 */	extsh. r0, r31
/* 802D7BC8  40 81 00 0C */	ble lbl_802D7BD4
/* 802D7BCC  7F C3 F3 78 */	mr r3, r30
/* 802D7BD0  4B FF 71 6D */	bl __dl__FPv
lbl_802D7BD4:
/* 802D7BD4  7F C3 F3 78 */	mr r3, r30
/* 802D7BD8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D7BDC  83 C1 00 08 */	lwz r30, 8(r1)
/* 802D7BE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D7BE4  7C 08 03 A6 */	mtlr r0
/* 802D7BE8  38 21 00 10 */	addi r1, r1, 0x10
/* 802D7BEC  4E 80 00 20 */	blr 
