lbl_8018EF5C:
/* 8018EF5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8018EF60  7C 08 02 A6 */	mflr r0
/* 8018EF64  90 01 00 14 */	stw r0, 0x14(r1)
/* 8018EF68  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8018EF6C  7C 7F 1B 78 */	mr r31, r3
/* 8018EF70  38 80 00 0E */	li r4, 0xe
/* 8018EF74  48 00 0C F1 */	bl errorTxtSet__14dFile_select_cFUs
/* 8018EF78  38 00 00 00 */	li r0, 0
/* 8018EF7C  98 1F 02 68 */	stb r0, 0x268(r31)
/* 8018EF80  38 00 00 01 */	li r0, 1
/* 8018EF84  98 1F 02 69 */	stb r0, 0x269(r31)
/* 8018EF88  7F E3 FB 78 */	mr r3, r31
/* 8018EF8C  4B FF A8 01 */	bl yesnoSelectAnmSet__14dFile_select_cFv
/* 8018EF90  38 00 00 06 */	li r0, 6
/* 8018EF94  98 1F 02 71 */	stb r0, 0x271(r31)
/* 8018EF98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8018EF9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8018EFA0  7C 08 03 A6 */	mtlr r0
/* 8018EFA4  38 21 00 10 */	addi r1, r1, 0x10
/* 8018EFA8  4E 80 00 20 */	blr 
