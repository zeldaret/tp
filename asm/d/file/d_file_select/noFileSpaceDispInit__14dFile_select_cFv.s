lbl_8018E9B0:
/* 8018E9B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8018E9B4  7C 08 02 A6 */	mflr r0
/* 8018E9B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8018E9BC  38 80 00 0A */	li r4, 0xa
/* 8018E9C0  48 00 12 A5 */	bl errorTxtSet__14dFile_select_cFUs
/* 8018E9C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8018E9C8  7C 08 03 A6 */	mtlr r0
/* 8018E9CC  38 21 00 10 */	addi r1, r1, 0x10
/* 8018E9D0  4E 80 00 20 */	blr 
