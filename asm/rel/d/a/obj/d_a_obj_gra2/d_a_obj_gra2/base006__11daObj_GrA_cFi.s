lbl_80C03D54:
/* 80C03D54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C03D58  7C 08 02 A6 */	mflr r0
/* 80C03D5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C03D60  2C 04 00 00 */	cmpwi r4, 0
/* 80C03D64  41 82 00 10 */	beq lbl_80C03D74
/* 80C03D68  38 80 00 07 */	li r4, 7
/* 80C03D6C  C0 23 0A 94 */	lfs f1, 0xa94(r3)
/* 80C03D70  4B FF D6 41 */	bl setBaseAnm__11daObj_GrA_cFif
lbl_80C03D74:
/* 80C03D74  38 60 00 01 */	li r3, 1
/* 80C03D78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C03D7C  7C 08 03 A6 */	mtlr r0
/* 80C03D80  38 21 00 10 */	addi r1, r1, 0x10
/* 80C03D84  4E 80 00 20 */	blr 
