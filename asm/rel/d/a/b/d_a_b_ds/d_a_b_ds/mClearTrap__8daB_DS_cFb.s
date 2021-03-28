lbl_805CC80C:
/* 805CC80C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805CC810  7C 08 02 A6 */	mflr r0
/* 805CC814  90 01 00 34 */	stw r0, 0x34(r1)
/* 805CC818  39 61 00 30 */	addi r11, r1, 0x30
/* 805CC81C  4B D9 59 B8 */	b _savegpr_27
/* 805CC820  7C 7B 1B 78 */	mr r27, r3
/* 805CC824  7C 9C 23 78 */	mr r28, r4
/* 805CC828  3B A0 00 00 */	li r29, 0
/* 805CC82C  3B E0 00 00 */	li r31, 0
lbl_805CC830:
/* 805CC830  3B DF 2D 78 */	addi r30, r31, 0x2d78
/* 805CC834  7C 7B F0 2E */	lwzx r3, r27, r30
/* 805CC838  28 03 00 00 */	cmplwi r3, 0
/* 805CC83C  41 82 00 40 */	beq lbl_805CC87C
/* 805CC840  38 81 00 08 */	addi r4, r1, 8
/* 805CC844  4B A4 D1 78 */	b fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 805CC848  2C 03 00 00 */	cmpwi r3, 0
/* 805CC84C  41 82 00 30 */	beq lbl_805CC87C
/* 805CC850  80 61 00 08 */	lwz r3, 8(r1)
/* 805CC854  28 03 00 00 */	cmplwi r3, 0
/* 805CC858  41 82 00 24 */	beq lbl_805CC87C
/* 805CC85C  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 805CC860  41 82 00 0C */	beq lbl_805CC86C
/* 805CC864  4B A4 D4 18 */	b fopAcM_delete__FP10fopAc_ac_c
/* 805CC868  48 00 00 0C */	b lbl_805CC874
lbl_805CC86C:
/* 805CC86C  38 00 00 00 */	li r0, 0
/* 805CC870  B0 03 05 62 */	sth r0, 0x562(r3)
lbl_805CC874:
/* 805CC874  38 00 00 00 */	li r0, 0
/* 805CC878  7C 1B F1 2E */	stwx r0, r27, r30
lbl_805CC87C:
/* 805CC87C  3B BD 00 01 */	addi r29, r29, 1
/* 805CC880  2C 1D 00 14 */	cmpwi r29, 0x14
/* 805CC884  3B FF 00 04 */	addi r31, r31, 4
/* 805CC888  41 80 FF A8 */	blt lbl_805CC830
/* 805CC88C  39 61 00 30 */	addi r11, r1, 0x30
/* 805CC890  4B D9 59 90 */	b _restgpr_27
/* 805CC894  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805CC898  7C 08 03 A6 */	mtlr r0
/* 805CC89C  38 21 00 30 */	addi r1, r1, 0x30
/* 805CC8A0  4E 80 00 20 */	blr 
