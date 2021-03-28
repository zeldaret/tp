lbl_801F1C70:
/* 801F1C70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801F1C74  7C 08 02 A6 */	mflr r0
/* 801F1C78  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F1C7C  38 80 03 B5 */	li r4, 0x3b5
/* 801F1C80  48 00 34 45 */	bl errorTxtSet__12dMenu_save_cFUs
/* 801F1C84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801F1C88  7C 08 03 A6 */	mtlr r0
/* 801F1C8C  38 21 00 10 */	addi r1, r1, 0x10
/* 801F1C90  4E 80 00 20 */	blr 
