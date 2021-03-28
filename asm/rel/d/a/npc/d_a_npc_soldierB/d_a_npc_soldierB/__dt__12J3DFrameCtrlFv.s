lbl_80AF5934:
/* 80AF5934  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AF5938  7C 08 02 A6 */	mflr r0
/* 80AF593C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AF5940  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AF5944  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AF5948  41 82 00 1C */	beq lbl_80AF5964
/* 80AF594C  3C A0 80 AF */	lis r5, __vt__12J3DFrameCtrl@ha
/* 80AF5950  38 05 5D 94 */	addi r0, r5, __vt__12J3DFrameCtrl@l
/* 80AF5954  90 1F 00 00 */	stw r0, 0(r31)
/* 80AF5958  7C 80 07 35 */	extsh. r0, r4
/* 80AF595C  40 81 00 08 */	ble lbl_80AF5964
/* 80AF5960  4B 7D 93 DC */	b __dl__FPv
lbl_80AF5964:
/* 80AF5964  7F E3 FB 78 */	mr r3, r31
/* 80AF5968  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AF596C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AF5970  7C 08 03 A6 */	mtlr r0
/* 80AF5974  38 21 00 10 */	addi r1, r1, 0x10
/* 80AF5978  4E 80 00 20 */	blr 
