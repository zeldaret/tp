lbl_80349A88:
/* 80349A88  7C 08 02 A6 */	mflr r0
/* 80349A8C  28 03 00 10 */	cmplwi r3, 0x10
/* 80349A90  90 01 00 04 */	stw r0, 4(r1)
/* 80349A94  94 21 FF F8 */	stwu r1, -8(r1)
/* 80349A98  40 82 00 20 */	bne lbl_80349AB8
/* 80349A9C  3C 60 01 23 */	lis r3, 0x0123 /* 0x01234568@ha */
/* 80349AA0  38 63 45 68 */	addi r3, r3, 0x4568 /* 0x01234568@l */
/* 80349AA4  48 00 20 E5 */	bl __DVDStoreErrorCode
/* 80349AA8  48 00 16 91 */	bl DVDReset
/* 80349AAC  38 60 00 00 */	li r3, 0
/* 80349AB0  4B FF F8 2D */	bl cbForStateError
/* 80349AB4  48 00 00 2C */	b lbl_80349AE0
lbl_80349AB8:
/* 80349AB8  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 80349ABC  41 82 00 18 */	beq lbl_80349AD4
/* 80349AC0  38 00 00 00 */	li r0, 0
/* 80349AC4  80 6D 91 F8 */	lwz r3, executing(r13)
/* 80349AC8  90 0D 92 2C */	stw r0, NumInternalRetry(r13)
/* 80349ACC  48 00 00 25 */	bl stateCheckID2
/* 80349AD0  48 00 00 10 */	b lbl_80349AE0
lbl_80349AD4:
/* 80349AD4  3C 60 80 35 */	lis r3, cbForStateGettingError@ha
/* 80349AD8  38 63 94 98 */	addi r3, r3, cbForStateGettingError@l
/* 80349ADC  4B FF E5 C5 */	bl DVDLowRequestError
lbl_80349AE0:
/* 80349AE0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80349AE4  38 21 00 08 */	addi r1, r1, 8
/* 80349AE8  7C 08 03 A6 */	mtlr r0
/* 80349AEC  4E 80 00 20 */	blr 
