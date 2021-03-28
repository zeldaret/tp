lbl_8002174C:
/* 8002174C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80021750  7C 08 02 A6 */	mflr r0
/* 80021754  90 01 00 14 */	stw r0, 0x14(r1)
/* 80021758  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8002175C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80021760  41 82 00 14 */	beq lbl_80021774
/* 80021764  4B FF FF 79 */	bl fpcLy_RootLayer__Fv
/* 80021768  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8002176C  7C 1F 00 40 */	cmplw r31, r0
/* 80021770  40 82 00 0C */	bne lbl_8002177C
lbl_80021774:
/* 80021774  4B FF FF 69 */	bl fpcLy_RootLayer__Fv
/* 80021778  48 00 00 30 */	b lbl_800217A8
lbl_8002177C:
/* 8002177C  3C 1F 00 01 */	addis r0, r31, 1
/* 80021780  28 00 FF FD */	cmplwi r0, 0xfffd
/* 80021784  41 82 00 14 */	beq lbl_80021798
/* 80021788  4B FF FF 6D */	bl fpcLy_CurrentLayer__Fv
/* 8002178C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80021790  7C 1F 00 40 */	cmplw r31, r0
/* 80021794  40 82 00 0C */	bne lbl_800217A0
lbl_80021798:
/* 80021798  4B FF FF 5D */	bl fpcLy_CurrentLayer__Fv
/* 8002179C  48 00 00 0C */	b lbl_800217A8
lbl_800217A0:
/* 800217A0  7F E3 FB 78 */	mr r3, r31
/* 800217A4  4B FF FF 59 */	bl fpcLy_Search__FUi
lbl_800217A8:
/* 800217A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800217AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800217B0  7C 08 03 A6 */	mtlr r0
/* 800217B4  38 21 00 10 */	addi r1, r1, 0x10
/* 800217B8  4E 80 00 20 */	blr 
