lbl_80349F34:
/* 80349F34  7C 08 02 A6 */	mflr r0
/* 80349F38  28 03 00 10 */	cmplwi r3, 0x10
/* 80349F3C  90 01 00 04 */	stw r0, 4(r1)
/* 80349F40  94 21 FF F8 */	stwu r1, -8(r1)
/* 80349F44  40 82 00 20 */	bne lbl_80349F64
/* 80349F48  3C 60 01 23 */	lis r3, 0x0123 /* 0x01234568@ha */
/* 80349F4C  38 63 45 68 */	addi r3, r3, 0x4568 /* 0x01234568@l */
/* 80349F50  48 00 1C 39 */	bl __DVDStoreErrorCode
/* 80349F54  48 00 11 E5 */	bl DVDReset
/* 80349F58  38 60 00 00 */	li r3, 0
/* 80349F5C  4B FF F3 81 */	bl cbForStateError
/* 80349F60  48 00 00 28 */	b lbl_80349F88
lbl_80349F64:
/* 80349F64  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 80349F68  41 82 00 14 */	beq lbl_80349F7C
/* 80349F6C  38 00 00 00 */	li r0, 0
/* 80349F70  90 0D 92 2C */	stw r0, NumInternalRetry(r13)
/* 80349F74  4B FF F9 CD */	bl stateCheckID
/* 80349F78  48 00 00 10 */	b lbl_80349F88
lbl_80349F7C:
/* 80349F7C  3C 60 80 35 */	lis r3, cbForStateGettingError@ha /* 0x80349498@ha */
/* 80349F80  38 63 94 98 */	addi r3, r3, cbForStateGettingError@l /* 0x80349498@l */
/* 80349F84  4B FF E1 1D */	bl DVDLowRequestError
lbl_80349F88:
/* 80349F88  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80349F8C  38 21 00 08 */	addi r1, r1, 8
/* 80349F90  7C 08 03 A6 */	mtlr r0
/* 80349F94  4E 80 00 20 */	blr 
