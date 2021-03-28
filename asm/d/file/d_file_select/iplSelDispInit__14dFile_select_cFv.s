lbl_8018EA3C:
/* 8018EA3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8018EA40  7C 08 02 A6 */	mflr r0
/* 8018EA44  90 01 00 14 */	stw r0, 0x14(r1)
/* 8018EA48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8018EA4C  7C 7F 1B 78 */	mr r31, r3
/* 8018EA50  38 80 00 12 */	li r4, 0x12
/* 8018EA54  48 00 12 11 */	bl errorTxtSet__14dFile_select_cFUs
/* 8018EA58  7F E3 FB 78 */	mr r3, r31
/* 8018EA5C  38 80 00 01 */	li r4, 1
/* 8018EA60  4B FF EA 99 */	bl ketteiTxtDispAnmInit__14dFile_select_cFUc
/* 8018EA64  38 00 00 01 */	li r0, 1
/* 8018EA68  98 1F 02 80 */	stb r0, 0x280(r31)
/* 8018EA6C  7F E3 FB 78 */	mr r3, r31
/* 8018EA70  38 80 04 73 */	li r4, 0x473
/* 8018EA74  38 A0 04 7D */	li r5, 0x47d
/* 8018EA78  4B FF A1 45 */	bl yesnoMenuMoveAnmInitSet__14dFile_select_cFii
/* 8018EA7C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8018EA80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8018EA84  7C 08 03 A6 */	mtlr r0
/* 8018EA88  38 21 00 10 */	addi r1, r1, 0x10
/* 8018EA8C  4E 80 00 20 */	blr 
