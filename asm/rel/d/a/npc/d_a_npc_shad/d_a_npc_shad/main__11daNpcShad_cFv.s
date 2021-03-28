lbl_80AE0438:
/* 80AE0438  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AE043C  7C 08 02 A6 */	mflr r0
/* 80AE0440  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AE0444  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AE0448  7C 7F 1B 78 */	mr r31, r3
/* 80AE044C  38 7F 0D EC */	addi r3, r31, 0xdec
/* 80AE0450  4B 88 1B C8 */	b __ptmf_test
/* 80AE0454  2C 03 00 00 */	cmpwi r3, 0
/* 80AE0458  41 82 00 18 */	beq lbl_80AE0470
/* 80AE045C  7F E3 FB 78 */	mr r3, r31
/* 80AE0460  38 80 00 00 */	li r4, 0
/* 80AE0464  39 9F 0D EC */	addi r12, r31, 0xdec
/* 80AE0468  4B 88 1C 1C */	b __ptmf_scall
/* 80AE046C  60 00 00 00 */	nop 
lbl_80AE0470:
/* 80AE0470  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80AE0474  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80AE0478  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80AE047C  28 00 00 00 */	cmplwi r0, 0
/* 80AE0480  41 82 00 30 */	beq lbl_80AE04B0
/* 80AE0484  A0 1F 00 F8 */	lhz r0, 0xf8(r31)
/* 80AE0488  28 00 00 01 */	cmplwi r0, 1
/* 80AE048C  41 82 00 24 */	beq lbl_80AE04B0
/* 80AE0490  80 9F 0E 08 */	lwz r4, 0xe08(r31)
/* 80AE0494  3C 04 00 01 */	addis r0, r4, 1
/* 80AE0498  28 00 FF FF */	cmplwi r0, 0xffff
/* 80AE049C  41 82 00 14 */	beq lbl_80AE04B0
/* 80AE04A0  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80AE04A4  4B 56 32 48 */	b setPtI_Id__14dEvt_control_cFUi
/* 80AE04A8  38 00 FF FF */	li r0, -1
/* 80AE04AC  90 1F 0E 08 */	stw r0, 0xe08(r31)
lbl_80AE04B0:
/* 80AE04B0  7F E3 FB 78 */	mr r3, r31
/* 80AE04B4  48 00 06 A5 */	bl playExpression__11daNpcShad_cFv
/* 80AE04B8  7F E3 FB 78 */	mr r3, r31
/* 80AE04BC  48 00 00 1D */	bl playMotion__11daNpcShad_cFv
/* 80AE04C0  38 60 00 01 */	li r3, 1
/* 80AE04C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AE04C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AE04CC  7C 08 03 A6 */	mtlr r0
/* 80AE04D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80AE04D4  4E 80 00 20 */	blr 
