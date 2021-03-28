lbl_80C03B48:
/* 80C03B48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C03B4C  7C 08 02 A6 */	mflr r0
/* 80C03B50  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C03B54  2C 04 00 00 */	cmpwi r4, 0
/* 80C03B58  41 82 00 10 */	beq lbl_80C03B68
/* 80C03B5C  38 80 00 02 */	li r4, 2
/* 80C03B60  C0 23 0A 94 */	lfs f1, 0xa94(r3)
/* 80C03B64  4B FF D8 4D */	bl setBaseAnm__11daObj_GrA_cFif
lbl_80C03B68:
/* 80C03B68  38 60 00 01 */	li r3, 1
/* 80C03B6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C03B70  7C 08 03 A6 */	mtlr r0
/* 80C03B74  38 21 00 10 */	addi r1, r1, 0x10
/* 80C03B78  4E 80 00 20 */	blr 
