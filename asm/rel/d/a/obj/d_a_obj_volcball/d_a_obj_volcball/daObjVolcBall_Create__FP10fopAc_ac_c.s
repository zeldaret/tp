lbl_80D23B04:
/* 80D23B04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D23B08  7C 08 02 A6 */	mflr r0
/* 80D23B0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D23B10  4B FF E3 19 */	bl create__15daObjVolcBall_cFv
/* 80D23B14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D23B18  7C 08 03 A6 */	mtlr r0
/* 80D23B1C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D23B20  4E 80 00 20 */	blr 
