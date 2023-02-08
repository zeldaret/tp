lbl_8018F17C:
/* 8018F17C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8018F180  7C 08 02 A6 */	mflr r0
/* 8018F184  90 01 00 14 */	stw r0, 0x14(r1)
/* 8018F188  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8018F18C  7C 7F 1B 78 */	mr r31, r3
/* 8018F190  38 80 00 0D */	li r4, 0xd
/* 8018F194  48 00 0A D1 */	bl errorTxtSet__14dFile_select_cFUs
/* 8018F198  38 00 00 00 */	li r0, 0
/* 8018F19C  98 1F 02 80 */	stb r0, 0x280(r31)
/* 8018F1A0  7F E3 FB 78 */	mr r3, r31
/* 8018F1A4  38 80 04 7D */	li r4, 0x47d
/* 8018F1A8  38 A0 04 73 */	li r5, 0x473
/* 8018F1AC  4B FF 9A 11 */	bl yesnoMenuMoveAnmInitSet__14dFile_select_cFii
/* 8018F1B0  38 00 00 09 */	li r0, 9
/* 8018F1B4  98 1F 02 71 */	stb r0, 0x271(r31)
/* 8018F1B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8018F1BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8018F1C0  7C 08 03 A6 */	mtlr r0
/* 8018F1C4  38 21 00 10 */	addi r1, r1, 0x10
/* 8018F1C8  4E 80 00 20 */	blr 
