lbl_80C047D8:
/* 80C047D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C047DC  7C 08 02 A6 */	mflr r0
/* 80C047E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C047E4  2C 04 00 00 */	cmpwi r4, 0
/* 80C047E8  41 82 00 14 */	beq lbl_80C047FC
/* 80C047EC  38 80 00 1A */	li r4, 0x1a
/* 80C047F0  38 A0 00 01 */	li r5, 1
/* 80C047F4  C0 23 0A 98 */	lfs f1, 0xa98(r3)
/* 80C047F8  4B FF CC FD */	bl setFaceAnm__11daObj_GrA_cFibf
lbl_80C047FC:
/* 80C047FC  38 60 00 01 */	li r3, 1
/* 80C04800  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C04804  7C 08 03 A6 */	mtlr r0
/* 80C04808  38 21 00 10 */	addi r1, r1, 0x10
/* 80C0480C  4E 80 00 20 */	blr 
