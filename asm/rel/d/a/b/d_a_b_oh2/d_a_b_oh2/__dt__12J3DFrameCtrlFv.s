lbl_8061E820:
/* 8061E820  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8061E824  7C 08 02 A6 */	mflr r0
/* 8061E828  90 01 00 14 */	stw r0, 0x14(r1)
/* 8061E82C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8061E830  7C 7F 1B 79 */	or. r31, r3, r3
/* 8061E834  41 82 00 1C */	beq lbl_8061E850
/* 8061E838  3C A0 80 62 */	lis r5, __vt__12J3DFrameCtrl@ha
/* 8061E83C  38 05 EA DC */	addi r0, r5, __vt__12J3DFrameCtrl@l
/* 8061E840  90 1F 00 00 */	stw r0, 0(r31)
/* 8061E844  7C 80 07 35 */	extsh. r0, r4
/* 8061E848  40 81 00 08 */	ble lbl_8061E850
/* 8061E84C  4B CB 04 F0 */	b __dl__FPv
lbl_8061E850:
/* 8061E850  7F E3 FB 78 */	mr r3, r31
/* 8061E854  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8061E858  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8061E85C  7C 08 03 A6 */	mtlr r0
/* 8061E860  38 21 00 10 */	addi r1, r1, 0x10
/* 8061E864  4E 80 00 20 */	blr 
