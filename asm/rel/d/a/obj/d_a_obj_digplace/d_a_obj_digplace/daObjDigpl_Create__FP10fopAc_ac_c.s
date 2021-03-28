lbl_8057C138:
/* 8057C138  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057C13C  7C 08 02 A6 */	mflr r0
/* 8057C140  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057C144  4B FF FE 55 */	bl create__12daObjDigpl_cFv
/* 8057C148  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057C14C  7C 08 03 A6 */	mtlr r0
/* 8057C150  38 21 00 10 */	addi r1, r1, 0x10
/* 8057C154  4E 80 00 20 */	blr 
