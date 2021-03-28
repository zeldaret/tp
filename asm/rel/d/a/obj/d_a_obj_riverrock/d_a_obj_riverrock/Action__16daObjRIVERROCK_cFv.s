lbl_80CBCDE8:
/* 80CBCDE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CBCDEC  7C 08 02 A6 */	mflr r0
/* 80CBCDF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CBCDF4  80 03 05 A0 */	lwz r0, 0x5a0(r3)
/* 80CBCDF8  2C 00 00 01 */	cmpwi r0, 1
/* 80CBCDFC  41 82 00 1C */	beq lbl_80CBCE18
/* 80CBCE00  40 80 00 1C */	bge lbl_80CBCE1C
/* 80CBCE04  2C 00 00 00 */	cmpwi r0, 0
/* 80CBCE08  40 80 00 08 */	bge lbl_80CBCE10
/* 80CBCE0C  48 00 00 10 */	b lbl_80CBCE1C
lbl_80CBCE10:
/* 80CBCE10  48 00 03 B5 */	bl WaitAction__16daObjRIVERROCK_cFv
/* 80CBCE14  48 00 00 08 */	b lbl_80CBCE1C
lbl_80CBCE18:
/* 80CBCE18  4B FF FF 7D */	bl BreakAction__16daObjRIVERROCK_cFv
lbl_80CBCE1C:
/* 80CBCE1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CBCE20  7C 08 03 A6 */	mtlr r0
/* 80CBCE24  38 21 00 10 */	addi r1, r1, 0x10
/* 80CBCE28  4E 80 00 20 */	blr 
