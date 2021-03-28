lbl_801C9238:
/* 801C9238  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801C923C  7C 08 02 A6 */	mflr r0
/* 801C9240  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C9244  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801C9248  7C 7F 1B 78 */	mr r31, r3
/* 801C924C  80 63 00 18 */	lwz r3, 0x18(r3)
/* 801C9250  80 63 00 6C */	lwz r3, 0x6c(r3)
/* 801C9254  48 07 45 85 */	bl move__17dMsgScrnExplain_cFv
/* 801C9258  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C925C  80 83 00 6C */	lwz r4, 0x6c(r3)
/* 801C9260  88 04 00 60 */	lbz r0, 0x60(r4)
/* 801C9264  28 00 00 00 */	cmplwi r0, 0
/* 801C9268  40 82 00 14 */	bne lbl_801C927C
/* 801C926C  48 00 E4 55 */	bl deleteExplain__17dMenu_Fmap2DTop_cFv
/* 801C9270  7F E3 FB 78 */	mr r3, r31
/* 801C9274  88 9F 03 02 */	lbz r4, 0x302(r31)
/* 801C9278  48 00 24 59 */	bl setProcess__12dMenu_Fmap_cFUc
lbl_801C927C:
/* 801C927C  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801C9280  88 83 12 29 */	lbz r4, 0x1229(r3)
/* 801C9284  7F E3 FB 78 */	mr r3, r31
/* 801C9288  38 A0 00 00 */	li r5, 0
/* 801C928C  48 00 24 55 */	bl setFlash__12dMenu_Fmap_cFUcb
/* 801C9290  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801C9294  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801C9298  7C 08 03 A6 */	mtlr r0
/* 801C929C  38 21 00 10 */	addi r1, r1, 0x10
/* 801C92A0  4E 80 00 20 */	blr 
