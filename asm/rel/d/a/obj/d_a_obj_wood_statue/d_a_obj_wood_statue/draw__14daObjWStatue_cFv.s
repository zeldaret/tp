lbl_80D3B428:
/* 80D3B428  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D3B42C  7C 08 02 A6 */	mflr r0
/* 80D3B430  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D3B434  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D3B438  7C 7F 1B 78 */	mr r31, r3
/* 80D3B43C  4B 2F C6 91 */	bl chkDraw__12daItemBase_cFv
/* 80D3B440  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D3B444  40 82 00 0C */	bne lbl_80D3B450
/* 80D3B448  38 60 00 01 */	li r3, 1
/* 80D3B44C  48 00 00 1C */	b lbl_80D3B468
lbl_80D3B450:
/* 80D3B450  7F E3 FB 78 */	mr r3, r31
/* 80D3B454  81 9F 05 68 */	lwz r12, 0x568(r31)
/* 80D3B458  81 8C 00 08 */	lwz r12, 8(r12)
/* 80D3B45C  7D 89 03 A6 */	mtctr r12
/* 80D3B460  4E 80 04 21 */	bctrl 
/* 80D3B464  38 60 00 01 */	li r3, 1
lbl_80D3B468:
/* 80D3B468  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D3B46C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D3B470  7C 08 03 A6 */	mtlr r0
/* 80D3B474  38 21 00 10 */	addi r1, r1, 0x10
/* 80D3B478  4E 80 00 20 */	blr 
