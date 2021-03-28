lbl_80021AD0:
/* 80021AD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80021AD4  7C 08 02 A6 */	mflr r0
/* 80021AD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80021ADC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80021AE0  7C 7F 1B 78 */	mr r31, r3
/* 80021AE4  80 63 00 B8 */	lwz r3, 0xb8(r3)
/* 80021AE8  7F E4 FB 78 */	mr r4, r31
/* 80021AEC  48 00 09 BD */	bl fpcMtd_Delete__FP20process_method_classPv
/* 80021AF0  2C 03 00 01 */	cmpwi r3, 1
/* 80021AF4  40 82 00 0C */	bne lbl_80021B00
/* 80021AF8  38 00 00 00 */	li r0, 0
/* 80021AFC  90 1F 00 B4 */	stw r0, 0xb4(r31)
lbl_80021B00:
/* 80021B00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80021B04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80021B08  7C 08 03 A6 */	mtlr r0
/* 80021B0C  38 21 00 10 */	addi r1, r1, 0x10
/* 80021B10  4E 80 00 20 */	blr 
