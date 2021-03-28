lbl_801FC85C:
/* 801FC85C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801FC860  7C 08 02 A6 */	mflr r0
/* 801FC864  90 01 00 14 */	stw r0, 0x14(r1)
/* 801FC868  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801FC86C  7C 7F 1B 78 */	mr r31, r3
/* 801FC870  80 63 01 28 */	lwz r3, 0x128(r3)
/* 801FC874  28 03 00 00 */	cmplwi r3, 0
/* 801FC878  41 82 00 40 */	beq lbl_801FC8B8
/* 801FC87C  4B FE 10 B9 */	bl isSync__14dMenu_Letter_cFv
/* 801FC880  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801FC884  40 82 00 0C */	bne lbl_801FC890
/* 801FC888  38 60 00 00 */	li r3, 0
/* 801FC88C  48 00 00 64 */	b lbl_801FC8F0
lbl_801FC890:
/* 801FC890  80 7F 01 28 */	lwz r3, 0x128(r31)
/* 801FC894  28 03 00 00 */	cmplwi r3, 0
/* 801FC898  41 82 00 18 */	beq lbl_801FC8B0
/* 801FC89C  38 80 00 01 */	li r4, 1
/* 801FC8A0  81 83 00 00 */	lwz r12, 0(r3)
/* 801FC8A4  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801FC8A8  7D 89 03 A6 */	mtctr r12
/* 801FC8AC  4E 80 04 21 */	bctrl 
lbl_801FC8B0:
/* 801FC8B0  38 00 00 00 */	li r0, 0
/* 801FC8B4  90 1F 01 28 */	stw r0, 0x128(r31)
lbl_801FC8B8:
/* 801FC8B8  80 7F 01 0C */	lwz r3, 0x10c(r31)
/* 801FC8BC  28 03 00 00 */	cmplwi r3, 0
/* 801FC8C0  41 82 00 24 */	beq lbl_801FC8E4
/* 801FC8C4  41 82 00 18 */	beq lbl_801FC8DC
/* 801FC8C8  38 80 00 01 */	li r4, 1
/* 801FC8CC  81 83 00 00 */	lwz r12, 0(r3)
/* 801FC8D0  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801FC8D4  7D 89 03 A6 */	mtctr r12
/* 801FC8D8  4E 80 04 21 */	bctrl 
lbl_801FC8DC:
/* 801FC8DC  38 00 00 00 */	li r0, 0
/* 801FC8E0  90 1F 01 0C */	stw r0, 0x10c(r31)
lbl_801FC8E4:
/* 801FC8E4  7F E3 FB 78 */	mr r3, r31
/* 801FC8E8  48 00 07 ED */	bl checkMemSize__5dMw_cFv
/* 801FC8EC  38 60 00 01 */	li r3, 1
lbl_801FC8F0:
/* 801FC8F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801FC8F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801FC8F8  7C 08 03 A6 */	mtlr r0
/* 801FC8FC  38 21 00 10 */	addi r1, r1, 0x10
/* 801FC900  4E 80 00 20 */	blr 
