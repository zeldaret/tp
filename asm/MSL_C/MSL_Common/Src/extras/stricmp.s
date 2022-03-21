lbl_8036CA94:
/* 8036CA94  88 03 00 00 */	lbz r0, 0(r3)
/* 8036CA98  38 63 00 01 */	addi r3, r3, 1
/* 8036CA9C  7C 00 07 74 */	extsb r0, r0
/* 8036CAA0  2C 00 FF FF */	cmpwi r0, -1
/* 8036CAA4  40 82 00 0C */	bne lbl_8036CAB0
/* 8036CAA8  38 A0 FF FF */	li r5, -1
/* 8036CAAC  48 00 00 14 */	b lbl_8036CAC0
lbl_8036CAB0:
/* 8036CAB0  3C A0 80 3D */	lis r5, __lower_map@ha /* 0x803D2D18@ha */
/* 8036CAB4  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8036CAB8  38 A5 2D 18 */	addi r5, r5, __lower_map@l /* 0x803D2D18@l */
/* 8036CABC  7C A5 00 AE */	lbzx r5, r5, r0
lbl_8036CAC0:
/* 8036CAC0  88 04 00 00 */	lbz r0, 0(r4)
/* 8036CAC4  7C A6 07 74 */	extsb r6, r5
/* 8036CAC8  38 84 00 01 */	addi r4, r4, 1
/* 8036CACC  7C 00 07 74 */	extsb r0, r0
/* 8036CAD0  2C 00 FF FF */	cmpwi r0, -1
/* 8036CAD4  40 82 00 0C */	bne lbl_8036CAE0
/* 8036CAD8  38 00 FF FF */	li r0, -1
/* 8036CADC  48 00 00 14 */	b lbl_8036CAF0
lbl_8036CAE0:
/* 8036CAE0  3C A0 80 3D */	lis r5, __lower_map@ha /* 0x803D2D18@ha */
/* 8036CAE4  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8036CAE8  38 A5 2D 18 */	addi r5, r5, __lower_map@l /* 0x803D2D18@l */
/* 8036CAEC  7C 05 00 AE */	lbzx r0, r5, r0
lbl_8036CAF0:
/* 8036CAF0  7C 00 07 74 */	extsb r0, r0
/* 8036CAF4  7C 06 00 00 */	cmpw r6, r0
/* 8036CAF8  40 80 00 0C */	bge lbl_8036CB04
/* 8036CAFC  38 60 FF FF */	li r3, -1
/* 8036CB00  4E 80 00 20 */	blr 
lbl_8036CB04:
/* 8036CB04  40 81 00 0C */	ble lbl_8036CB10
/* 8036CB08  38 60 00 01 */	li r3, 1
/* 8036CB0C  4E 80 00 20 */	blr 
lbl_8036CB10:
/* 8036CB10  7C C0 07 75 */	extsb. r0, r6
/* 8036CB14  40 82 FF 80 */	bne stricmp
/* 8036CB18  38 60 00 00 */	li r3, 0
/* 8036CB1C  4E 80 00 20 */	blr 
