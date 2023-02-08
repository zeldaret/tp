lbl_80D2FCD0:
/* 80D2FCD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D2FCD4  7C 08 02 A6 */	mflr r0
/* 80D2FCD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D2FCDC  4B FF FF B9 */	bl draw__16daObjWaterFall_cFv
/* 80D2FCE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D2FCE4  7C 08 03 A6 */	mtlr r0
/* 80D2FCE8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D2FCEC  4E 80 00 20 */	blr 
