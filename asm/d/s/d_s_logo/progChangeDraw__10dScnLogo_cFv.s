lbl_80256B3C:
/* 80256B3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80256B40  7C 08 02 A6 */	mflr r0
/* 80256B44  90 01 00 14 */	stw r0, 0x14(r1)
/* 80256B48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80256B4C  7C 7F 1B 78 */	mr r31, r3
/* 80256B50  48 00 19 AD */	bl getProgressiveMode__10dScnLogo_cFv
/* 80256B54  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80256B58  41 82 00 24 */	beq lbl_80256B7C
/* 80256B5C  A0 1F 02 0C */	lhz r0, 0x20c(r31)
/* 80256B60  28 00 00 5A */	cmplwi r0, 0x5a
/* 80256B64  40 82 00 18 */	bne lbl_80256B7C
/* 80256B68  88 1F 02 09 */	lbz r0, 0x209(r31)
/* 80256B6C  28 00 00 00 */	cmplwi r0, 0
/* 80256B70  40 82 00 0C */	bne lbl_80256B7C
/* 80256B74  7F E3 FB 78 */	mr r3, r31
/* 80256B78  48 00 19 D5 */	bl setRenderMode__10dScnLogo_cFv
lbl_80256B7C:
/* 80256B7C  A0 1F 02 0C */	lhz r0, 0x20c(r31)
/* 80256B80  28 00 00 00 */	cmplwi r0, 0
/* 80256B84  40 82 00 5C */	bne lbl_80256BE0
/* 80256B88  80 6D 86 F8 */	lwz r3, mResetData__6mDoRst(r13)
/* 80256B8C  88 03 00 15 */	lbz r0, 0x15(r3)
/* 80256B90  28 00 00 00 */	cmplwi r0, 0
/* 80256B94  41 82 00 18 */	beq lbl_80256BAC
/* 80256B98  38 00 00 5A */	li r0, 0x5a
/* 80256B9C  B0 1F 02 0C */	sth r0, 0x20c(r31)
/* 80256BA0  38 00 00 03 */	li r0, 3
/* 80256BA4  98 1F 02 08 */	stb r0, 0x208(r31)
/* 80256BA8  48 00 00 14 */	b lbl_80256BBC
lbl_80256BAC:
/* 80256BAC  38 00 00 78 */	li r0, 0x78
/* 80256BB0  B0 1F 02 0C */	sth r0, 0x20c(r31)
/* 80256BB4  38 00 00 00 */	li r0, 0
/* 80256BB8  98 1F 02 08 */	stb r0, 0x208(r31)
lbl_80256BBC:
/* 80256BBC  80 6D 8C 40 */	lwz r3, sManager__10JFWDisplay(r13)
/* 80256BC0  80 63 00 04 */	lwz r3, 4(r3)
/* 80256BC4  28 03 00 00 */	cmplwi r3, 0
/* 80256BC8  41 82 00 18 */	beq lbl_80256BE0
/* 80256BCC  38 80 00 1E */	li r4, 0x1e
/* 80256BD0  81 83 00 00 */	lwz r12, 0(r3)
/* 80256BD4  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80256BD8  7D 89 03 A6 */	mtctr r12
/* 80256BDC  4E 80 04 21 */	bctrl 
lbl_80256BE0:
/* 80256BE0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80256BE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80256BE8  7C 08 03 A6 */	mtlr r0
/* 80256BEC  38 21 00 10 */	addi r1, r1, 0x10
/* 80256BF0  4E 80 00 20 */	blr 
