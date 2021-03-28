lbl_80C043A4:
/* 80C043A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C043A8  7C 08 02 A6 */	mflr r0
/* 80C043AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C043B0  2C 04 00 00 */	cmpwi r4, 0
/* 80C043B4  41 82 00 10 */	beq lbl_80C043C4
/* 80C043B8  38 80 00 13 */	li r4, 0x13
/* 80C043BC  C0 23 0A 94 */	lfs f1, 0xa94(r3)
/* 80C043C0  4B FF CF F1 */	bl setBaseAnm__11daObj_GrA_cFif
lbl_80C043C4:
/* 80C043C4  38 60 00 01 */	li r3, 1
/* 80C043C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C043CC  7C 08 03 A6 */	mtlr r0
/* 80C043D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C043D4  4E 80 00 20 */	blr 
