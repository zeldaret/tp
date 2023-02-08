lbl_80C03B14:
/* 80C03B14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C03B18  7C 08 02 A6 */	mflr r0
/* 80C03B1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C03B20  2C 04 00 00 */	cmpwi r4, 0
/* 80C03B24  41 82 00 10 */	beq lbl_80C03B34
/* 80C03B28  38 80 00 00 */	li r4, 0
/* 80C03B2C  C0 23 0A 94 */	lfs f1, 0xa94(r3)
/* 80C03B30  4B FF D8 81 */	bl setBaseAnm__11daObj_GrA_cFif
lbl_80C03B34:
/* 80C03B34  38 60 00 01 */	li r3, 1
/* 80C03B38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C03B3C  7C 08 03 A6 */	mtlr r0
/* 80C03B40  38 21 00 10 */	addi r1, r1, 0x10
/* 80C03B44  4E 80 00 20 */	blr 
