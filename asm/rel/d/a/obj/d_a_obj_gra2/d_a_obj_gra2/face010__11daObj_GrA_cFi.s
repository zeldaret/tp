lbl_80C047A0:
/* 80C047A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C047A4  7C 08 02 A6 */	mflr r0
/* 80C047A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C047AC  2C 04 00 00 */	cmpwi r4, 0
/* 80C047B0  41 82 00 14 */	beq lbl_80C047C4
/* 80C047B4  38 80 00 17 */	li r4, 0x17
/* 80C047B8  38 A0 00 01 */	li r5, 1
/* 80C047BC  C0 23 0A 98 */	lfs f1, 0xa98(r3)
/* 80C047C0  4B FF CD 35 */	bl setFaceAnm__11daObj_GrA_cFibf
lbl_80C047C4:
/* 80C047C4  38 60 00 01 */	li r3, 1
/* 80C047C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C047CC  7C 08 03 A6 */	mtlr r0
/* 80C047D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C047D4  4E 80 00 20 */	blr 
