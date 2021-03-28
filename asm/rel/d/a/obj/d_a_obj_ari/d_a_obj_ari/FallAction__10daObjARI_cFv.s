lbl_80BA36CC:
/* 80BA36CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA36D0  7C 08 02 A6 */	mflr r0
/* 80BA36D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA36D8  88 03 05 E8 */	lbz r0, 0x5e8(r3)
/* 80BA36DC  2C 00 00 01 */	cmpwi r0, 1
/* 80BA36E0  41 82 00 0C */	beq lbl_80BA36EC
/* 80BA36E4  40 80 00 0C */	bge lbl_80BA36F0
/* 80BA36E8  48 00 00 08 */	b lbl_80BA36F0
lbl_80BA36EC:
/* 80BA36EC  4B FF FF 4D */	bl B_MoveAction__10daObjARI_cFv
lbl_80BA36F0:
/* 80BA36F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA36F4  7C 08 03 A6 */	mtlr r0
/* 80BA36F8  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA36FC  4E 80 00 20 */	blr 
