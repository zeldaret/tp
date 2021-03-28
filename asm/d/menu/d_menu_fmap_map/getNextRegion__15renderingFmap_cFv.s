lbl_801CE93C:
/* 801CE93C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801CE940  7C 08 02 A6 */	mflr r0
/* 801CE944  90 01 00 14 */	stw r0, 0x14(r1)
/* 801CE948  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801CE94C  3B E0 00 00 */	li r31, 0
/* 801CE950  80 83 00 7C */	lwz r4, 0x7c(r3)
/* 801CE954  80 04 00 04 */	lwz r0, 4(r4)
/* 801CE958  90 03 00 7C */	stw r0, 0x7c(r3)
/* 801CE95C  80 03 00 7C */	lwz r0, 0x7c(r3)
/* 801CE960  28 00 00 00 */	cmplwi r0, 0
/* 801CE964  40 82 00 0C */	bne lbl_801CE970
/* 801CE968  3B E0 00 01 */	li r31, 1
/* 801CE96C  48 00 00 20 */	b lbl_801CE98C
lbl_801CE970:
/* 801CE970  80 83 00 94 */	lwz r4, 0x94(r3)
/* 801CE974  38 04 00 01 */	addi r0, r4, 1
/* 801CE978  90 03 00 94 */	stw r0, 0x94(r3)
/* 801CE97C  80 83 00 7C */	lwz r4, 0x7c(r3)
/* 801CE980  80 04 00 20 */	lwz r0, 0x20(r4)
/* 801CE984  90 03 00 A0 */	stw r0, 0xa0(r3)
/* 801CE988  4B FF FE 21 */	bl getFirstStage__15renderingFmap_cFv
lbl_801CE98C:
/* 801CE98C  7F E3 FB 78 */	mr r3, r31
/* 801CE990  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801CE994  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801CE998  7C 08 03 A6 */	mtlr r0
/* 801CE99C  38 21 00 10 */	addi r1, r1, 0x10
/* 801CE9A0  4E 80 00 20 */	blr 
