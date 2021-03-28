lbl_80D669A8:
/* 80D669A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D669AC  7C 08 02 A6 */	mflr r0
/* 80D669B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D669B4  4B FF FE AD */	bl create__10daTboxSw_cFv
/* 80D669B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D669BC  7C 08 03 A6 */	mtlr r0
/* 80D669C0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D669C4  4E 80 00 20 */	blr 
