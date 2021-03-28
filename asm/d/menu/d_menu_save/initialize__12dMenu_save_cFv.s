lbl_801F0938:
/* 801F0938  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801F093C  7C 08 02 A6 */	mflr r0
/* 801F0940  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F0944  48 00 00 15 */	bl displayInit__12dMenu_save_cFv
/* 801F0948  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801F094C  7C 08 03 A6 */	mtlr r0
/* 801F0950  38 21 00 10 */	addi r1, r1, 0x10
/* 801F0954  4E 80 00 20 */	blr 
