lbl_804CE19C:
/* 804CE19C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804CE1A0  7C 08 02 A6 */	mflr r0
/* 804CE1A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804CE1A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804CE1AC  7C 7F 1B 78 */	mr r31, r3
/* 804CE1B0  4B B6 99 1D */	bl chkDraw__12daItemBase_cFv
/* 804CE1B4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804CE1B8  40 82 00 0C */	bne lbl_804CE1C4
/* 804CE1BC  38 60 00 01 */	li r3, 1
/* 804CE1C0  48 00 00 1C */	b lbl_804CE1DC
lbl_804CE1C4:
/* 804CE1C4  7F E3 FB 78 */	mr r3, r31
/* 804CE1C8  81 9F 05 68 */	lwz r12, 0x568(r31)
/* 804CE1CC  81 8C 00 08 */	lwz r12, 8(r12)
/* 804CE1D0  7D 89 03 A6 */	mtctr r12
/* 804CE1D4  4E 80 04 21 */	bctrl 
/* 804CE1D8  38 60 00 01 */	li r3, 1
lbl_804CE1DC:
/* 804CE1DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804CE1E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804CE1E4  7C 08 03 A6 */	mtlr r0
/* 804CE1E8  38 21 00 10 */	addi r1, r1, 0x10
/* 804CE1EC  4E 80 00 20 */	blr 
