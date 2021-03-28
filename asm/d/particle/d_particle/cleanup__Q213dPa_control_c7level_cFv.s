lbl_8004B808:
/* 8004B808  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8004B80C  7C 08 02 A6 */	mflr r0
/* 8004B810  90 01 00 24 */	stw r0, 0x24(r1)
/* 8004B814  39 61 00 20 */	addi r11, r1, 0x20
/* 8004B818  48 31 69 C1 */	bl _savegpr_28
/* 8004B81C  7C 7C 1B 78 */	mr r28, r3
/* 8004B820  3B DC 00 08 */	addi r30, r28, 8
/* 8004B824  3B A0 00 00 */	li r29, 0
/* 8004B828  3B E0 00 00 */	li r31, 0
lbl_8004B82C:
/* 8004B82C  80 1E 00 00 */	lwz r0, 0(r30)
/* 8004B830  28 00 00 00 */	cmplwi r0, 0
/* 8004B834  41 82 00 18 */	beq lbl_8004B84C
/* 8004B838  9B FE 00 06 */	stb r31, 6(r30)
/* 8004B83C  7F 83 E3 78 */	mr r3, r28
/* 8004B840  7F C4 F3 78 */	mr r4, r30
/* 8004B844  48 00 02 31 */	bl cutTable__Q213dPa_control_c7level_cFPQ313dPa_control_c7level_c9emitter_c
/* 8004B848  9B BC 00 04 */	stb r29, 4(r28)
lbl_8004B84C:
/* 8004B84C  3B BD 00 01 */	addi r29, r29, 1
/* 8004B850  2C 1D 00 80 */	cmpwi r29, 0x80
/* 8004B854  3B DE 00 18 */	addi r30, r30, 0x18
/* 8004B858  41 80 FF D4 */	blt lbl_8004B82C
/* 8004B85C  39 61 00 20 */	addi r11, r1, 0x20
/* 8004B860  48 31 69 C5 */	bl _restgpr_28
/* 8004B864  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8004B868  7C 08 03 A6 */	mtlr r0
/* 8004B86C  38 21 00 20 */	addi r1, r1, 0x20
/* 8004B870  4E 80 00 20 */	blr 
