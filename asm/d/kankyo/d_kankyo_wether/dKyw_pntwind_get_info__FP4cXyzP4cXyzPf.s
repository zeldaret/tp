lbl_8005B23C:
/* 8005B23C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8005B240  7C 08 02 A6 */	mflr r0
/* 8005B244  90 01 00 14 */	stw r0, 0x14(r1)
/* 8005B248  38 C0 00 00 */	li r6, 0
/* 8005B24C  4B FF FC 45 */	bl pntwind_get_info__FP4cXyzP4cXyzPfUc
/* 8005B250  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8005B254  7C 08 03 A6 */	mtlr r0
/* 8005B258  38 21 00 10 */	addi r1, r1, 0x10
/* 8005B25C  4E 80 00 20 */	blr 
