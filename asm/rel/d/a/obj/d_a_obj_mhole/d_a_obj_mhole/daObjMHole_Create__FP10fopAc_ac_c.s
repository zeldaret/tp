lbl_80C93D60:
/* 80C93D60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C93D64  7C 08 02 A6 */	mflr r0
/* 80C93D68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C93D6C  4B FF F7 75 */	bl create__12daObjMHole_cFv
/* 80C93D70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C93D74  7C 08 03 A6 */	mtlr r0
/* 80C93D78  38 21 00 10 */	addi r1, r1, 0x10
/* 80C93D7C  4E 80 00 20 */	blr 
