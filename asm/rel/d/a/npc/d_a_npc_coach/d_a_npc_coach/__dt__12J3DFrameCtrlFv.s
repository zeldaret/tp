lbl_8099EAD8:
/* 8099EAD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8099EADC  7C 08 02 A6 */	mflr r0
/* 8099EAE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8099EAE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8099EAE8  7C 7F 1B 79 */	or. r31, r3, r3
/* 8099EAEC  41 82 00 1C */	beq lbl_8099EB08
/* 8099EAF0  3C A0 80 9A */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x809A528C@ha */
/* 8099EAF4  38 05 52 8C */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x809A528C@l */
/* 8099EAF8  90 1F 00 00 */	stw r0, 0(r31)
/* 8099EAFC  7C 80 07 35 */	extsh. r0, r4
/* 8099EB00  40 81 00 08 */	ble lbl_8099EB08
/* 8099EB04  4B 93 02 39 */	bl __dl__FPv
lbl_8099EB08:
/* 8099EB08  7F E3 FB 78 */	mr r3, r31
/* 8099EB0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8099EB10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8099EB14  7C 08 03 A6 */	mtlr r0
/* 8099EB18  38 21 00 10 */	addi r1, r1, 0x10
/* 8099EB1C  4E 80 00 20 */	blr 
