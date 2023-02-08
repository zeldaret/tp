lbl_80D4AB08:
/* 80D4AB08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D4AB0C  7C 08 02 A6 */	mflr r0
/* 80D4AB10  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D4AB14  4B FF C4 B9 */	bl create__8daPeru_cFv
/* 80D4AB18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4AB1C  7C 08 03 A6 */	mtlr r0
/* 80D4AB20  38 21 00 10 */	addi r1, r1, 0x10
/* 80D4AB24  4E 80 00 20 */	blr 
