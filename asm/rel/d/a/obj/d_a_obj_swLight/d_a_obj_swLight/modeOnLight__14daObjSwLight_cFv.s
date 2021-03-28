lbl_80CF7788:
/* 80CF7788  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CF778C  7C 08 02 A6 */	mflr r0
/* 80CF7790  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CF7794  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CF7798  7C 7F 1B 78 */	mr r31, r3
/* 80CF779C  38 7F 0A DC */	addi r3, r31, 0xadc
/* 80CF77A0  3C 80 80 D0 */	lis r4, lit_3701@ha
/* 80CF77A4  C0 24 84 20 */	lfs f1, lit_3701@l(r4)
/* 80CF77A8  3C 80 80 D0 */	lis r4, lit_3844@ha
/* 80CF77AC  C0 44 84 50 */	lfs f2, lit_3844@l(r4)
/* 80CF77B0  4B 57 8F 90 */	b cLib_chaseF__FPfff
/* 80CF77B4  2C 03 00 00 */	cmpwi r3, 0
/* 80CF77B8  41 82 00 0C */	beq lbl_80CF77C4
/* 80CF77BC  7F E3 FB 78 */	mr r3, r31
/* 80CF77C0  48 00 00 19 */	bl init_modeSwOffWait__14daObjSwLight_cFv
lbl_80CF77C4:
/* 80CF77C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CF77C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CF77CC  7C 08 03 A6 */	mtlr r0
/* 80CF77D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CF77D4  4E 80 00 20 */	blr 
