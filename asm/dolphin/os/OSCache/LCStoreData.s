lbl_8033B838:
/* 8033B838  7C 08 02 A6 */	mflr r0
/* 8033B83C  90 01 00 04 */	stw r0, 4(r1)
/* 8033B840  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 8033B844  93 E1 00 24 */	stw r31, 0x24(r1)
/* 8033B848  93 C1 00 20 */	stw r30, 0x20(r1)
/* 8033B84C  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 8033B850  93 81 00 18 */	stw r28, 0x18(r1)
/* 8033B854  7C 7C 1B 78 */	mr r28, r3
/* 8033B858  7C 9D 23 78 */	mr r29, r4
/* 8033B85C  38 05 00 1F */	addi r0, r5, 0x1f
/* 8033B860  54 03 D9 7E */	srwi r3, r0, 5
/* 8033B864  38 03 00 7F */	addi r0, r3, 0x7f
/* 8033B868  7C 7F 1B 78 */	mr r31, r3
/* 8033B86C  54 1E C9 FE */	srwi r30, r0, 7
/* 8033B870  48 00 00 04 */	b lbl_8033B874
lbl_8033B874:
/* 8033B874  48 00 00 04 */	b lbl_8033B878
lbl_8033B878:
/* 8033B878  48 00 00 40 */	b lbl_8033B8B8
lbl_8033B87C:
/* 8033B87C  28 1F 00 80 */	cmplwi r31, 0x80
/* 8033B880  40 80 00 1C */	bge lbl_8033B89C
/* 8033B884  7F 83 E3 78 */	mr r3, r28
/* 8033B888  7F A4 EB 78 */	mr r4, r29
/* 8033B88C  7F E5 FB 78 */	mr r5, r31
/* 8033B890  4B FF FF 85 */	bl LCStoreBlocks
/* 8033B894  3B E0 00 00 */	li r31, 0
/* 8033B898  48 00 00 20 */	b lbl_8033B8B8
lbl_8033B89C:
/* 8033B89C  7F 83 E3 78 */	mr r3, r28
/* 8033B8A0  7F A4 EB 78 */	mr r4, r29
/* 8033B8A4  38 A0 00 00 */	li r5, 0
/* 8033B8A8  4B FF FF 6D */	bl LCStoreBlocks
/* 8033B8AC  3B FF FF 80 */	addi r31, r31, -128
/* 8033B8B0  3B 9C 10 00 */	addi r28, r28, 0x1000
/* 8033B8B4  3B BD 10 00 */	addi r29, r29, 0x1000
lbl_8033B8B8:
/* 8033B8B8  28 1F 00 00 */	cmplwi r31, 0
/* 8033B8BC  40 82 FF C0 */	bne lbl_8033B87C
/* 8033B8C0  7F C3 F3 78 */	mr r3, r30
/* 8033B8C4  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8033B8C8  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 8033B8CC  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 8033B8D0  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 8033B8D4  83 81 00 18 */	lwz r28, 0x18(r1)
/* 8033B8D8  38 21 00 28 */	addi r1, r1, 0x28
/* 8033B8DC  7C 08 03 A6 */	mtlr r0
/* 8033B8E0  4E 80 00 20 */	blr 
