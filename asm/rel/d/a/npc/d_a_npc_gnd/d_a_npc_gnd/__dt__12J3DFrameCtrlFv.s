lbl_809BDE1C:
/* 809BDE1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809BDE20  7C 08 02 A6 */	mflr r0
/* 809BDE24  90 01 00 14 */	stw r0, 0x14(r1)
/* 809BDE28  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809BDE2C  7C 7F 1B 79 */	or. r31, r3, r3
/* 809BDE30  41 82 00 1C */	beq lbl_809BDE4C
/* 809BDE34  3C A0 80 9C */	lis r5, __vt__12J3DFrameCtrl@ha
/* 809BDE38  38 05 E6 E0 */	addi r0, r5, __vt__12J3DFrameCtrl@l
/* 809BDE3C  90 1F 00 00 */	stw r0, 0(r31)
/* 809BDE40  7C 80 07 35 */	extsh. r0, r4
/* 809BDE44  40 81 00 08 */	ble lbl_809BDE4C
/* 809BDE48  4B 91 0E F4 */	b __dl__FPv
lbl_809BDE4C:
/* 809BDE4C  7F E3 FB 78 */	mr r3, r31
/* 809BDE50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809BDE54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809BDE58  7C 08 03 A6 */	mtlr r0
/* 809BDE5C  38 21 00 10 */	addi r1, r1, 0x10
/* 809BDE60  4E 80 00 20 */	blr 
