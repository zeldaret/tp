lbl_8049CCCC:
/* 8049CCCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8049CCD0  7C 08 02 A6 */	mflr r0
/* 8049CCD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8049CCD8  4B FF D2 E5 */	bl decAlphaBlur__9daArrow_cFv
/* 8049CCDC  38 60 00 01 */	li r3, 1
/* 8049CCE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8049CCE4  7C 08 03 A6 */	mtlr r0
/* 8049CCE8  38 21 00 10 */	addi r1, r1, 0x10
/* 8049CCEC  4E 80 00 20 */	blr 
