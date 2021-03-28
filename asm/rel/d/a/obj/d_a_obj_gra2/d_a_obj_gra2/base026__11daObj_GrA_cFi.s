lbl_80C0440C:
/* 80C0440C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C04410  7C 08 02 A6 */	mflr r0
/* 80C04414  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C04418  2C 04 00 00 */	cmpwi r4, 0
/* 80C0441C  41 82 00 10 */	beq lbl_80C0442C
/* 80C04420  38 80 00 15 */	li r4, 0x15
/* 80C04424  C0 23 0A 94 */	lfs f1, 0xa94(r3)
/* 80C04428  4B FF CF 89 */	bl setBaseAnm__11daObj_GrA_cFif
lbl_80C0442C:
/* 80C0442C  38 60 00 01 */	li r3, 1
/* 80C04430  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C04434  7C 08 03 A6 */	mtlr r0
/* 80C04438  38 21 00 10 */	addi r1, r1, 0x10
/* 80C0443C  4E 80 00 20 */	blr 
