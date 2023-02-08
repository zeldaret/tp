lbl_80C045F0:
/* 80C045F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C045F4  7C 08 02 A6 */	mflr r0
/* 80C045F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C045FC  2C 04 00 00 */	cmpwi r4, 0
/* 80C04600  41 82 00 14 */	beq lbl_80C04614
/* 80C04604  38 80 00 18 */	li r4, 0x18
/* 80C04608  38 A0 00 01 */	li r5, 1
/* 80C0460C  C0 23 0A 98 */	lfs f1, 0xa98(r3)
/* 80C04610  4B FF CE E5 */	bl setFaceAnm__11daObj_GrA_cFibf
lbl_80C04614:
/* 80C04614  38 60 00 01 */	li r3, 1
/* 80C04618  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C0461C  7C 08 03 A6 */	mtlr r0
/* 80C04620  38 21 00 10 */	addi r1, r1, 0x10
/* 80C04624  4E 80 00 20 */	blr 
