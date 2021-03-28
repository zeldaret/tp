lbl_80CE8790:
/* 80CE8790  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CE8794  7C 08 02 A6 */	mflr r0
/* 80CE8798  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CE879C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CE87A0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CE87A4  41 82 00 28 */	beq lbl_80CE87CC
/* 80CE87A8  41 82 00 14 */	beq lbl_80CE87BC
/* 80CE87AC  41 82 00 10 */	beq lbl_80CE87BC
/* 80CE87B0  3C 60 80 CF */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80CE87B4  38 03 8F 68 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80CE87B8  90 1F 00 00 */	stw r0, 0(r31)
lbl_80CE87BC:
/* 80CE87BC  7C 80 07 35 */	extsh. r0, r4
/* 80CE87C0  40 81 00 0C */	ble lbl_80CE87CC
/* 80CE87C4  7F E3 FB 78 */	mr r3, r31
/* 80CE87C8  4B 5E 65 74 */	b __dl__FPv
lbl_80CE87CC:
/* 80CE87CC  7F E3 FB 78 */	mr r3, r31
/* 80CE87D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CE87D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CE87D8  7C 08 03 A6 */	mtlr r0
/* 80CE87DC  38 21 00 10 */	addi r1, r1, 0x10
/* 80CE87E0  4E 80 00 20 */	blr 
