lbl_8018EC4C:
/* 8018EC4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8018EC50  7C 08 02 A6 */	mflr r0
/* 8018EC54  90 01 00 14 */	stw r0, 0x14(r1)
/* 8018EC58  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8018EC5C  7C 7F 1B 78 */	mr r31, r3
/* 8018EC60  38 80 00 13 */	li r4, 0x13
/* 8018EC64  48 00 10 01 */	bl errorTxtSet__14dFile_select_cFUs
/* 8018EC68  38 00 00 00 */	li r0, 0
/* 8018EC6C  98 1F 02 82 */	stb r0, 0x282(r31)
/* 8018EC70  88 1F 01 08 */	lbz r0, 0x108(r31)
/* 8018EC74  28 00 00 00 */	cmplwi r0, 0
/* 8018EC78  40 82 00 30 */	bne lbl_8018ECA8
/* 8018EC7C  7F E3 FB 78 */	mr r3, r31
/* 8018EC80  38 80 00 01 */	li r4, 1
/* 8018EC84  4B FF E8 75 */	bl ketteiTxtDispAnmInit__14dFile_select_cFUc
/* 8018EC88  38 00 00 01 */	li r0, 1
/* 8018EC8C  98 1F 02 80 */	stb r0, 0x280(r31)
/* 8018EC90  7F E3 FB 78 */	mr r3, r31
/* 8018EC94  38 80 04 73 */	li r4, 0x473
/* 8018EC98  38 A0 04 7D */	li r5, 0x47d
/* 8018EC9C  4B FF 9F 21 */	bl yesnoMenuMoveAnmInitSet__14dFile_select_cFii
/* 8018ECA0  38 00 00 01 */	li r0, 1
/* 8018ECA4  98 1F 02 82 */	stb r0, 0x282(r31)
lbl_8018ECA8:
/* 8018ECA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8018ECAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8018ECB0  7C 08 03 A6 */	mtlr r0
/* 8018ECB4  38 21 00 10 */	addi r1, r1, 0x10
/* 8018ECB8  4E 80 00 20 */	blr 
