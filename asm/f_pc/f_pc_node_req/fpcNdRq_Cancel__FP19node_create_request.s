lbl_80022AA4:
/* 80022AA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80022AA8  7C 08 02 A6 */	mflr r0
/* 80022AAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80022AB0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80022AB4  7C 7F 1B 78 */	mr r31, r3
/* 80022AB8  80 63 00 3C */	lwz r3, 0x3c(r3)
/* 80022ABC  28 03 00 00 */	cmplwi r3, 0
/* 80022AC0  41 82 00 20 */	beq lbl_80022AE0
/* 80022AC4  80 63 00 04 */	lwz r3, 4(r3)
/* 80022AC8  7F E4 FB 78 */	mr r4, r31
/* 80022ACC  4B FF F9 5D */	bl fpcMtd_Method__FPFPv_iPv
/* 80022AD0  2C 03 00 00 */	cmpwi r3, 0
/* 80022AD4  40 82 00 0C */	bne lbl_80022AE0
/* 80022AD8  38 60 00 00 */	li r3, 0
/* 80022ADC  48 00 00 0C */	b lbl_80022AE8
lbl_80022AE0:
/* 80022AE0  7F E3 FB 78 */	mr r3, r31
/* 80022AE4  4B FF FF 59 */	bl fpcNdRq_Delete__FP19node_create_request
lbl_80022AE8:
/* 80022AE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80022AEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80022AF0  7C 08 03 A6 */	mtlr r0
/* 80022AF4  38 21 00 10 */	addi r1, r1, 0x10
/* 80022AF8  4E 80 00 20 */	blr 
