lbl_80BE1E4C:
/* 80BE1E4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE1E50  7C 08 02 A6 */	mflr r0
/* 80BE1E54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE1E58  4B FF E0 01 */	bl create__11daObjDrop_cFv
/* 80BE1E5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE1E60  7C 08 03 A6 */	mtlr r0
/* 80BE1E64  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE1E68  4E 80 00 20 */	blr 
