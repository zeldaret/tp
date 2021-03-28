lbl_801F23A4:
/* 801F23A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801F23A8  7C 08 02 A6 */	mflr r0
/* 801F23AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F23B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801F23B4  7C 7F 1B 78 */	mr r31, r3
/* 801F23B8  38 80 03 C1 */	li r4, 0x3c1
/* 801F23BC  48 00 2D 09 */	bl errorTxtSet__12dMenu_save_cFUs
/* 801F23C0  7F E3 FB 78 */	mr r3, r31
/* 801F23C4  38 80 00 01 */	li r4, 1
/* 801F23C8  48 00 3E 35 */	bl ketteiTxtDispAnmInit__12dMenu_save_cFUc
/* 801F23CC  38 00 00 00 */	li r0, 0
/* 801F23D0  98 1F 01 B6 */	stb r0, 0x1b6(r31)
/* 801F23D4  7F E3 FB 78 */	mr r3, r31
/* 801F23D8  38 80 0B B7 */	li r4, 0xbb7
/* 801F23DC  38 A0 0B C1 */	li r5, 0xbc1
/* 801F23E0  38 C0 00 00 */	li r6, 0
/* 801F23E4  48 00 33 61 */	bl yesnoMenuMoveAnmInitSet__12dMenu_save_cFiiUc
/* 801F23E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801F23EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801F23F0  7C 08 03 A6 */	mtlr r0
/* 801F23F4  38 21 00 10 */	addi r1, r1, 0x10
/* 801F23F8  4E 80 00 20 */	blr 
