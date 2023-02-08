lbl_80BA2C60:
/* 80BA2C60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA2C64  7C 08 02 A6 */	mflr r0
/* 80BA2C68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA2C6C  48 00 1D 7D */	bl create__10daObjARI_cFv
/* 80BA2C70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA2C74  7C 08 03 A6 */	mtlr r0
/* 80BA2C78  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA2C7C  4E 80 00 20 */	blr 
