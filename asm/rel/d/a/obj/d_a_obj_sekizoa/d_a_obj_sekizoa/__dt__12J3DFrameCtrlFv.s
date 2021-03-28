lbl_80CD5430:
/* 80CD5430  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CD5434  7C 08 02 A6 */	mflr r0
/* 80CD5438  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CD543C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CD5440  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CD5444  41 82 00 1C */	beq lbl_80CD5460
/* 80CD5448  3C A0 80 CD */	lis r5, __vt__12J3DFrameCtrl@ha
/* 80CD544C  38 05 67 6C */	addi r0, r5, __vt__12J3DFrameCtrl@l
/* 80CD5450  90 1F 00 00 */	stw r0, 0(r31)
/* 80CD5454  7C 80 07 35 */	extsh. r0, r4
/* 80CD5458  40 81 00 08 */	ble lbl_80CD5460
/* 80CD545C  4B 5F 98 E0 */	b __dl__FPv
lbl_80CD5460:
/* 80CD5460  7F E3 FB 78 */	mr r3, r31
/* 80CD5464  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CD5468  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CD546C  7C 08 03 A6 */	mtlr r0
/* 80CD5470  38 21 00 10 */	addi r1, r1, 0x10
/* 80CD5474  4E 80 00 20 */	blr 
