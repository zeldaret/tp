lbl_80D42A7C:
/* 80D42A7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D42A80  7C 08 02 A6 */	mflr r0
/* 80D42A84  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D42A88  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D42A8C  7C 7F 1B 78 */	mr r31, r3
/* 80D42A90  88 03 07 2E */	lbz r0, 0x72e(r3)
/* 80D42A94  28 00 00 01 */	cmplwi r0, 1
/* 80D42A98  40 82 00 50 */	bne lbl_80D42AE8
/* 80D42A9C  38 00 00 00 */	li r0, 0
/* 80D42AA0  88 7F 07 2D */	lbz r3, 0x72d(r31)
/* 80D42AA4  28 03 00 00 */	cmplwi r3, 0
/* 80D42AA8  41 82 00 0C */	beq lbl_80D42AB4
/* 80D42AAC  28 03 00 02 */	cmplwi r3, 2
/* 80D42AB0  40 82 00 08 */	bne lbl_80D42AB8
lbl_80D42AB4:
/* 80D42AB4  38 00 00 01 */	li r0, 1
lbl_80D42AB8:
/* 80D42AB8  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80D42ABC  41 82 00 0C */	beq lbl_80D42AC8
/* 80D42AC0  7F E3 FB 78 */	mr r3, r31
/* 80D42AC4  48 00 02 69 */	bl setBaseMtx__14daObjZraMark_cFv
lbl_80D42AC8:
/* 80D42AC8  A8 7F 07 54 */	lha r3, 0x754(r31)
/* 80D42ACC  2C 03 00 00 */	cmpwi r3, 0
/* 80D42AD0  40 81 00 0C */	ble lbl_80D42ADC
/* 80D42AD4  38 03 FF FF */	addi r0, r3, -1
/* 80D42AD8  B0 1F 07 54 */	sth r0, 0x754(r31)
lbl_80D42ADC:
/* 80D42ADC  38 7F 07 54 */	addi r3, r31, 0x754
/* 80D42AE0  48 00 0F 19 */	bl calc__20_ZraMark_Hahen_Mng_cFv
/* 80D42AE4  48 00 00 10 */	b lbl_80D42AF4
lbl_80D42AE8:
/* 80D42AE8  48 00 02 45 */	bl setBaseMtx__14daObjZraMark_cFv
/* 80D42AEC  7F E3 FB 78 */	mr r3, r31
/* 80D42AF0  48 00 04 6D */	bl col_set__14daObjZraMark_cFv
lbl_80D42AF4:
/* 80D42AF4  38 60 00 01 */	li r3, 1
/* 80D42AF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D42AFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D42B00  7C 08 03 A6 */	mtlr r0
/* 80D42B04  38 21 00 10 */	addi r1, r1, 0x10
/* 80D42B08  4E 80 00 20 */	blr 
