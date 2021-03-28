lbl_80C043D8:
/* 80C043D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C043DC  7C 08 02 A6 */	mflr r0
/* 80C043E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C043E4  2C 04 00 00 */	cmpwi r4, 0
/* 80C043E8  41 82 00 10 */	beq lbl_80C043F8
/* 80C043EC  38 80 00 14 */	li r4, 0x14
/* 80C043F0  C0 23 0A 94 */	lfs f1, 0xa94(r3)
/* 80C043F4  4B FF CF BD */	bl setBaseAnm__11daObj_GrA_cFif
lbl_80C043F8:
/* 80C043F8  38 60 00 01 */	li r3, 1
/* 80C043FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C04400  7C 08 03 A6 */	mtlr r0
/* 80C04404  38 21 00 10 */	addi r1, r1, 0x10
/* 80C04408  4E 80 00 20 */	blr 
