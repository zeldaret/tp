lbl_8018EFAC:
/* 8018EFAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8018EFB0  7C 08 02 A6 */	mflr r0
/* 8018EFB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8018EFB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8018EFBC  7C 7F 1B 78 */	mr r31, r3
/* 8018EFC0  38 80 00 11 */	li r4, 0x11
/* 8018EFC4  48 00 0C A1 */	bl errorTxtSet__14dFile_select_cFUs
/* 8018EFC8  38 00 00 00 */	li r0, 0
/* 8018EFCC  98 1F 02 80 */	stb r0, 0x280(r31)
/* 8018EFD0  7F E3 FB 78 */	mr r3, r31
/* 8018EFD4  38 80 04 7D */	li r4, 0x47d
/* 8018EFD8  38 A0 04 73 */	li r5, 0x473
/* 8018EFDC  4B FF 9B E1 */	bl yesnoMenuMoveAnmInitSet__14dFile_select_cFii
/* 8018EFE0  38 00 00 07 */	li r0, 7
/* 8018EFE4  98 1F 02 71 */	stb r0, 0x271(r31)
/* 8018EFE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8018EFEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8018EFF0  7C 08 03 A6 */	mtlr r0
/* 8018EFF4  38 21 00 10 */	addi r1, r1, 0x10
/* 8018EFF8  4E 80 00 20 */	blr 
