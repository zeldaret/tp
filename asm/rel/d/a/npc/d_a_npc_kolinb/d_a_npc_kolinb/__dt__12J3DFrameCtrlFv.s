lbl_80A48308:
/* 80A48308  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A4830C  7C 08 02 A6 */	mflr r0
/* 80A48310  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A48314  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A48318  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A4831C  41 82 00 1C */	beq lbl_80A48338
/* 80A48320  3C A0 80 A5 */	lis r5, __vt__12J3DFrameCtrl@ha
/* 80A48324  38 05 8D 14 */	addi r0, r5, __vt__12J3DFrameCtrl@l
/* 80A48328  90 1F 00 00 */	stw r0, 0(r31)
/* 80A4832C  7C 80 07 35 */	extsh. r0, r4
/* 80A48330  40 81 00 08 */	ble lbl_80A48338
/* 80A48334  4B 88 6A 08 */	b __dl__FPv
lbl_80A48338:
/* 80A48338  7F E3 FB 78 */	mr r3, r31
/* 80A4833C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A48340  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A48344  7C 08 03 A6 */	mtlr r0
/* 80A48348  38 21 00 10 */	addi r1, r1, 0x10
/* 80A4834C  4E 80 00 20 */	blr 
