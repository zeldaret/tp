lbl_8071BCCC:
/* 8071BCCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8071BCD0  7C 08 02 A6 */	mflr r0
/* 8071BCD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8071BCD8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8071BCDC  7C 7F 1B 79 */	or. r31, r3, r3
/* 8071BCE0  41 82 00 1C */	beq lbl_8071BCFC
/* 8071BCE4  3C A0 80 72 */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x8071CA44@ha */
/* 8071BCE8  38 05 CA 44 */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x8071CA44@l */
/* 8071BCEC  90 1F 00 00 */	stw r0, 0(r31)
/* 8071BCF0  7C 80 07 35 */	extsh. r0, r4
/* 8071BCF4  40 81 00 08 */	ble lbl_8071BCFC
/* 8071BCF8  4B BB 30 45 */	bl __dl__FPv
lbl_8071BCFC:
/* 8071BCFC  7F E3 FB 78 */	mr r3, r31
/* 8071BD00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8071BD04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8071BD08  7C 08 03 A6 */	mtlr r0
/* 8071BD0C  38 21 00 10 */	addi r1, r1, 0x10
/* 8071BD10  4E 80 00 20 */	blr 
