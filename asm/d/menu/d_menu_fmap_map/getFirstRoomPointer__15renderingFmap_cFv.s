lbl_801CE6A8:
/* 801CE6A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801CE6AC  7C 08 02 A6 */	mflr r0
/* 801CE6B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801CE6B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801CE6B8  93 C1 00 08 */	stw r30, 8(r1)
/* 801CE6BC  7C 7E 1B 78 */	mr r30, r3
/* 801CE6C0  3B E0 00 00 */	li r31, 0
/* 801CE6C4  48 00 00 99 */	bl getFirstRegion__15renderingFmap_cFv
/* 801CE6C8  80 1E 00 84 */	lwz r0, 0x84(r30)
/* 801CE6CC  28 00 00 00 */	cmplwi r0, 0
/* 801CE6D0  41 82 00 70 */	beq lbl_801CE740
/* 801CE6D4  80 7E 00 88 */	lwz r3, 0x88(r30)
/* 801CE6D8  28 03 00 00 */	cmplwi r3, 0
/* 801CE6DC  41 82 00 30 */	beq lbl_801CE70C
/* 801CE6E0  83 E3 00 08 */	lwz r31, 8(r3)
/* 801CE6E4  48 00 00 28 */	b lbl_801CE70C
lbl_801CE6E8:
/* 801CE6E8  80 1E 00 88 */	lwz r0, 0x88(r30)
/* 801CE6EC  28 00 00 00 */	cmplwi r0, 0
/* 801CE6F0  41 82 00 1C */	beq lbl_801CE70C
/* 801CE6F4  7F C3 F3 78 */	mr r3, r30
/* 801CE6F8  81 9E 00 00 */	lwz r12, 0(r30)
/* 801CE6FC  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801CE700  7D 89 03 A6 */	mtctr r12
/* 801CE704  4E 80 04 21 */	bctrl 
/* 801CE708  7C 7F 1B 78 */	mr r31, r3
lbl_801CE70C:
/* 801CE70C  80 1E 00 84 */	lwz r0, 0x84(r30)
/* 801CE710  28 00 00 00 */	cmplwi r0, 0
/* 801CE714  41 82 00 1C */	beq lbl_801CE730
/* 801CE718  28 1F 00 00 */	cmplwi r31, 0
/* 801CE71C  41 82 FF CC */	beq lbl_801CE6E8
/* 801CE720  7F C3 F3 78 */	mr r3, r30
/* 801CE724  4B FF FD B9 */	bl isDrawRoom__15renderingFmap_cFv
/* 801CE728  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801CE72C  41 82 FF BC */	beq lbl_801CE6E8
lbl_801CE730:
/* 801CE730  28 1F 00 00 */	cmplwi r31, 0
/* 801CE734  41 82 00 0C */	beq lbl_801CE740
/* 801CE738  7F C3 F3 78 */	mr r3, r30
/* 801CE73C  4B FF FE B1 */	bl roomSetteing__15renderingFmap_cFv
lbl_801CE740:
/* 801CE740  7F E3 FB 78 */	mr r3, r31
/* 801CE744  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801CE748  83 C1 00 08 */	lwz r30, 8(r1)
/* 801CE74C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801CE750  7C 08 03 A6 */	mtlr r0
/* 801CE754  38 21 00 10 */	addi r1, r1, 0x10
/* 801CE758  4E 80 00 20 */	blr 
