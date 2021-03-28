lbl_80684A94:
/* 80684A94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80684A98  7C 08 02 A6 */	mflr r0
/* 80684A9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80684AA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80684AA4  7C 7F 1B 78 */	mr r31, r3
/* 80684AA8  3C 80 80 68 */	lis r4, l_HIO@ha
/* 80684AAC  38 84 56 84 */	addi r4, r4, l_HIO@l
/* 80684AB0  88 04 00 0C */	lbz r0, 0xc(r4)
/* 80684AB4  28 00 00 00 */	cmplwi r0, 0
/* 80684AB8  41 82 00 08 */	beq lbl_80684AC0
/* 80684ABC  4B 99 51 C0 */	b fopAcM_delete__FP10fopAc_ac_c
lbl_80684AC0:
/* 80684AC0  A8 7F 05 94 */	lha r3, 0x594(r31)
/* 80684AC4  38 03 00 01 */	addi r0, r3, 1
/* 80684AC8  B0 1F 05 94 */	sth r0, 0x594(r31)
/* 80684ACC  38 60 00 00 */	li r3, 0
/* 80684AD0  38 00 00 02 */	li r0, 2
/* 80684AD4  7C 09 03 A6 */	mtctr r0
lbl_80684AD8:
/* 80684AD8  38 A3 05 9A */	addi r5, r3, 0x59a
/* 80684ADC  7C 9F 2A AE */	lhax r4, r31, r5
/* 80684AE0  2C 04 00 00 */	cmpwi r4, 0
/* 80684AE4  41 82 00 0C */	beq lbl_80684AF0
/* 80684AE8  38 04 FF FF */	addi r0, r4, -1
/* 80684AEC  7C 1F 2B 2E */	sthx r0, r31, r5
lbl_80684AF0:
/* 80684AF0  38 63 00 02 */	addi r3, r3, 2
/* 80684AF4  42 00 FF E4 */	bdnz lbl_80684AD8
/* 80684AF8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80684AFC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80684B00  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80684B04  28 00 00 00 */	cmplwi r0, 0
/* 80684B08  41 82 00 0C */	beq lbl_80684B14
/* 80684B0C  38 00 00 3C */	li r0, 0x3c
/* 80684B10  98 1F 05 9E */	stb r0, 0x59e(r31)
lbl_80684B14:
/* 80684B14  88 7F 05 9E */	lbz r3, 0x59e(r31)
/* 80684B18  28 03 00 00 */	cmplwi r3, 0
/* 80684B1C  41 82 00 0C */	beq lbl_80684B28
/* 80684B20  38 03 FF FF */	addi r0, r3, -1
/* 80684B24  98 1F 05 9E */	stb r0, 0x59e(r31)
lbl_80684B28:
/* 80684B28  7F E3 FB 78 */	mr r3, r31
/* 80684B2C  4B FF F7 1D */	bl bee_control__FP11e_bee_class
/* 80684B30  88 1F 05 9E */	lbz r0, 0x59e(r31)
/* 80684B34  28 00 00 00 */	cmplwi r0, 0
/* 80684B38  40 82 00 0C */	bne lbl_80684B44
/* 80684B3C  38 00 00 04 */	li r0, 4
/* 80684B40  98 1F 05 9E */	stb r0, 0x59e(r31)
lbl_80684B44:
/* 80684B44  38 60 00 01 */	li r3, 1
/* 80684B48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80684B4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80684B50  7C 08 03 A6 */	mtlr r0
/* 80684B54  38 21 00 10 */	addi r1, r1, 0x10
/* 80684B58  4E 80 00 20 */	blr 
