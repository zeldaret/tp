lbl_80D14810:
/* 80D14810  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D14814  7C 08 02 A6 */	mflr r0
/* 80D14818  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D1481C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D14820  7C 7F 1B 78 */	mr r31, r3
/* 80D14824  A8 63 05 80 */	lha r3, 0x580(r3)
/* 80D14828  38 03 00 01 */	addi r0, r3, 1
/* 80D1482C  B0 1F 05 80 */	sth r0, 0x580(r31)
/* 80D14830  38 60 00 00 */	li r3, 0
/* 80D14834  38 00 00 02 */	li r0, 2
/* 80D14838  7C 09 03 A6 */	mtctr r0
lbl_80D1483C:
/* 80D1483C  38 A3 05 86 */	addi r5, r3, 0x586
/* 80D14840  7C 9F 2A AE */	lhax r4, r31, r5
/* 80D14844  2C 04 00 00 */	cmpwi r4, 0
/* 80D14848  41 82 00 0C */	beq lbl_80D14854
/* 80D1484C  38 04 FF FF */	addi r0, r4, -1
/* 80D14850  7C 1F 2B 2E */	sthx r0, r31, r5
lbl_80D14854:
/* 80D14854  38 63 00 02 */	addi r3, r3, 2
/* 80D14858  42 00 FF E4 */	bdnz lbl_80D1483C
/* 80D1485C  7F E3 FB 78 */	mr r3, r31
/* 80D14860  4B FF FB 25 */	bl yuka_control__FP14obj_toby_class
/* 80D14864  7F E3 FB 78 */	mr r3, r31
/* 80D14868  4B FF FD 1D */	bl demo_camera__FP14obj_toby_class
/* 80D1486C  38 60 00 01 */	li r3, 1
/* 80D14870  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D14874  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D14878  7C 08 03 A6 */	mtlr r0
/* 80D1487C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D14880  4E 80 00 20 */	blr 
