lbl_8036CFD8:
/* 8036CFD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8036CFDC  7C 08 02 A6 */	mflr r0
/* 8036CFE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8036CFE4  80 83 00 08 */	lwz r4, 8(r3)
/* 8036CFE8  38 63 00 10 */	addi r3, r3, 0x10
/* 8036CFEC  48 00 4D 7D */	bl TRKWriteUARTN
/* 8036CFF0  3C 80 80 3A */	lis r4, lit_98@ha
/* 8036CFF4  7C 65 1B 78 */	mr r5, r3
/* 8036CFF8  38 60 00 01 */	li r3, 1
/* 8036CFFC  38 84 26 B8 */	addi r4, r4, lit_98@l
/* 8036D000  4C C6 31 82 */	crclr 6
/* 8036D004  48 00 5C 51 */	bl MWTRACE
/* 8036D008  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8036D00C  38 60 00 00 */	li r3, 0
/* 8036D010  7C 08 03 A6 */	mtlr r0
/* 8036D014  38 21 00 10 */	addi r1, r1, 0x10
/* 8036D018  4E 80 00 20 */	blr 
