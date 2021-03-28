lbl_80A452A0:
/* 80A452A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A452A4  7C 08 02 A6 */	mflr r0
/* 80A452A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A452AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A452B0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A452B4  41 82 00 1C */	beq lbl_80A452D0
/* 80A452B8  3C A0 80 A4 */	lis r5, __vt__12J3DFrameCtrl@ha
/* 80A452BC  38 05 57 40 */	addi r0, r5, __vt__12J3DFrameCtrl@l
/* 80A452C0  90 1F 00 00 */	stw r0, 0(r31)
/* 80A452C4  7C 80 07 35 */	extsh. r0, r4
/* 80A452C8  40 81 00 08 */	ble lbl_80A452D0
/* 80A452CC  4B 88 9A 70 */	b __dl__FPv
lbl_80A452D0:
/* 80A452D0  7F E3 FB 78 */	mr r3, r31
/* 80A452D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A452D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A452DC  7C 08 03 A6 */	mtlr r0
/* 80A452E0  38 21 00 10 */	addi r1, r1, 0x10
/* 80A452E4  4E 80 00 20 */	blr 
