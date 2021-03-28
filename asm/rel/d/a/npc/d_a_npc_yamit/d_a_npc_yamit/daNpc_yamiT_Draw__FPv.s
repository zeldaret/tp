lbl_80B4BB24:
/* 80B4BB24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B4BB28  7C 08 02 A6 */	mflr r0
/* 80B4BB2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B4BB30  4B FF E9 B1 */	bl Draw__13daNpc_yamiT_cFv
/* 80B4BB34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B4BB38  7C 08 03 A6 */	mtlr r0
/* 80B4BB3C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B4BB40  4E 80 00 20 */	blr 
