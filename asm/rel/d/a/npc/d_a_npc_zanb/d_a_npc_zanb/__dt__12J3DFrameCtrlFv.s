lbl_80B6B634:
/* 80B6B634  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B6B638  7C 08 02 A6 */	mflr r0
/* 80B6B63C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B6B640  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B6B644  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B6B648  41 82 00 1C */	beq lbl_80B6B664
/* 80B6B64C  3C A0 80 B7 */	lis r5, __vt__12J3DFrameCtrl@ha
/* 80B6B650  38 05 BF 3C */	addi r0, r5, __vt__12J3DFrameCtrl@l
/* 80B6B654  90 1F 00 00 */	stw r0, 0(r31)
/* 80B6B658  7C 80 07 35 */	extsh. r0, r4
/* 80B6B65C  40 81 00 08 */	ble lbl_80B6B664
/* 80B6B660  4B 76 36 DC */	b __dl__FPv
lbl_80B6B664:
/* 80B6B664  7F E3 FB 78 */	mr r3, r31
/* 80B6B668  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B6B66C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B6B670  7C 08 03 A6 */	mtlr r0
/* 80B6B674  38 21 00 10 */	addi r1, r1, 0x10
/* 80B6B678  4E 80 00 20 */	blr 
