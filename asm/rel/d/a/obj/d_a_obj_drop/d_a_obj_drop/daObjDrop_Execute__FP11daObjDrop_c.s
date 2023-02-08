lbl_80BE1E0C:
/* 80BE1E0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE1E10  7C 08 02 A6 */	mflr r0
/* 80BE1E14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE1E18  4B FF FD AD */	bl execute__11daObjDrop_cFv
/* 80BE1E1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE1E20  7C 08 03 A6 */	mtlr r0
/* 80BE1E24  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE1E28  4E 80 00 20 */	blr 
