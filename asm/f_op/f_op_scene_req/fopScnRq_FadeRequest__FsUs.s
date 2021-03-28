lbl_8001EFF0:
/* 8001EFF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001EFF4  7C 08 02 A6 */	mflr r0
/* 8001EFF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001EFFC  38 A0 00 00 */	li r5, 0
/* 8001F000  80 0D 87 60 */	lwz r0, l_fopScnRq_IsUsingOfOverlap(r13)
/* 8001F004  2C 00 00 00 */	cmpwi r0, 0
/* 8001F008  40 82 00 18 */	bne lbl_8001F020
/* 8001F00C  4B FF F5 F9 */	bl fopOvlpM_Request__FsUs
/* 8001F010  7C 65 1B 79 */	or. r5, r3, r3
/* 8001F014  41 82 00 0C */	beq lbl_8001F020
/* 8001F018  38 00 00 01 */	li r0, 1
/* 8001F01C  90 0D 87 60 */	stw r0, l_fopScnRq_IsUsingOfOverlap(r13)
lbl_8001F020:
/* 8001F020  7C A3 2B 78 */	mr r3, r5
/* 8001F024  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001F028  7C 08 03 A6 */	mtlr r0
/* 8001F02C  38 21 00 10 */	addi r1, r1, 0x10
/* 8001F030  4E 80 00 20 */	blr 
