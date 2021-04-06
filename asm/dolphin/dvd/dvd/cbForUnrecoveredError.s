lbl_803496FC:
/* 803496FC  7C 08 02 A6 */	mflr r0
/* 80349700  28 03 00 10 */	cmplwi r3, 0x10
/* 80349704  90 01 00 04 */	stw r0, 4(r1)
/* 80349708  94 21 FF F8 */	stwu r1, -8(r1)
/* 8034970C  40 82 00 20 */	bne lbl_8034972C
/* 80349710  3C 60 01 23 */	lis r3, 0x0123 /* 0x01234568@ha */
/* 80349714  38 63 45 68 */	addi r3, r3, 0x4568 /* 0x01234568@l */
/* 80349718  48 00 24 71 */	bl __DVDStoreErrorCode
/* 8034971C  48 00 1A 1D */	bl DVDReset
/* 80349720  38 60 00 00 */	li r3, 0
/* 80349724  4B FF FB B9 */	bl cbForStateError
/* 80349728  48 00 00 20 */	b lbl_80349748
lbl_8034972C:
/* 8034972C  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 80349730  41 82 00 0C */	beq lbl_8034973C
/* 80349734  48 00 00 A5 */	bl stateGoToRetry
/* 80349738  48 00 00 10 */	b lbl_80349748
lbl_8034973C:
/* 8034973C  3C 60 80 35 */	lis r3, cbForUnrecoveredErrorRetry@ha /* 0x80349758@ha */
/* 80349740  38 63 97 58 */	addi r3, r3, cbForUnrecoveredErrorRetry@l /* 0x80349758@l */
/* 80349744  4B FF E9 5D */	bl DVDLowRequestError
lbl_80349748:
/* 80349748  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8034974C  38 21 00 08 */	addi r1, r1, 8
/* 80349750  7C 08 03 A6 */	mtlr r0
/* 80349754  4E 80 00 20 */	blr 
