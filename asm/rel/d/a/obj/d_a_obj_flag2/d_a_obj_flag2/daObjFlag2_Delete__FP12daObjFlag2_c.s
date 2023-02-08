lbl_80BEDEB8:
/* 80BEDEB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BEDEBC  7C 08 02 A6 */	mflr r0
/* 80BEDEC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BEDEC4  38 80 FF FF */	li r4, -1
/* 80BEDEC8  48 00 00 19 */	bl __dt__12daObjFlag2_cFv
/* 80BEDECC  38 60 00 01 */	li r3, 1
/* 80BEDED0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BEDED4  7C 08 03 A6 */	mtlr r0
/* 80BEDED8  38 21 00 10 */	addi r1, r1, 0x10
/* 80BEDEDC  4E 80 00 20 */	blr 
