lbl_801FCC44:
/* 801FCC44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801FCC48  7C 08 02 A6 */	mflr r0
/* 801FCC4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801FCC50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801FCC54  7C 7F 1B 78 */	mr r31, r3
/* 801FCC58  80 63 01 34 */	lwz r3, 0x134(r3)
/* 801FCC5C  28 03 00 00 */	cmplwi r3, 0
/* 801FCC60  41 82 00 40 */	beq lbl_801FCCA0
/* 801FCC64  4B FD BC 89 */	bl isSync__14dMenu_Insect_cFv
/* 801FCC68  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801FCC6C  40 82 00 0C */	bne lbl_801FCC78
/* 801FCC70  38 60 00 00 */	li r3, 0
/* 801FCC74  48 00 00 64 */	b lbl_801FCCD8
lbl_801FCC78:
/* 801FCC78  80 7F 01 34 */	lwz r3, 0x134(r31)
/* 801FCC7C  28 03 00 00 */	cmplwi r3, 0
/* 801FCC80  41 82 00 18 */	beq lbl_801FCC98
/* 801FCC84  38 80 00 01 */	li r4, 1
/* 801FCC88  81 83 00 00 */	lwz r12, 0(r3)
/* 801FCC8C  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801FCC90  7D 89 03 A6 */	mtctr r12
/* 801FCC94  4E 80 04 21 */	bctrl 
lbl_801FCC98:
/* 801FCC98  38 00 00 00 */	li r0, 0
/* 801FCC9C  90 1F 01 34 */	stw r0, 0x134(r31)
lbl_801FCCA0:
/* 801FCCA0  80 7F 01 0C */	lwz r3, 0x10c(r31)
/* 801FCCA4  28 03 00 00 */	cmplwi r3, 0
/* 801FCCA8  41 82 00 24 */	beq lbl_801FCCCC
/* 801FCCAC  41 82 00 18 */	beq lbl_801FCCC4
/* 801FCCB0  38 80 00 01 */	li r4, 1
/* 801FCCB4  81 83 00 00 */	lwz r12, 0(r3)
/* 801FCCB8  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801FCCBC  7D 89 03 A6 */	mtctr r12
/* 801FCCC0  4E 80 04 21 */	bctrl 
lbl_801FCCC4:
/* 801FCCC4  38 00 00 00 */	li r0, 0
/* 801FCCC8  90 1F 01 0C */	stw r0, 0x10c(r31)
lbl_801FCCCC:
/* 801FCCCC  7F E3 FB 78 */	mr r3, r31
/* 801FCCD0  48 00 04 05 */	bl checkMemSize__5dMw_cFv
/* 801FCCD4  38 60 00 01 */	li r3, 1
lbl_801FCCD8:
/* 801FCCD8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801FCCDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801FCCE0  7C 08 03 A6 */	mtlr r0
/* 801FCCE4  38 21 00 10 */	addi r1, r1, 0x10
/* 801FCCE8  4E 80 00 20 */	blr 
