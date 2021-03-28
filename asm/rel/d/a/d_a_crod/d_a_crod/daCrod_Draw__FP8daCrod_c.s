lbl_804A407C:
/* 804A407C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A4080  7C 08 02 A6 */	mflr r0
/* 804A4084  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A4088  4B FF FF 4D */	bl draw__8daCrod_cFv
/* 804A408C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A4090  7C 08 03 A6 */	mtlr r0
/* 804A4094  38 21 00 10 */	addi r1, r1, 0x10
/* 804A4098  4E 80 00 20 */	blr 
