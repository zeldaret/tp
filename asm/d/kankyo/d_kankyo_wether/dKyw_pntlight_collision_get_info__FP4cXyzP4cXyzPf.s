lbl_8005B260:
/* 8005B260  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8005B264  7C 08 02 A6 */	mflr r0
/* 8005B268  90 01 00 14 */	stw r0, 0x14(r1)
/* 8005B26C  38 C0 00 01 */	li r6, 1
/* 8005B270  4B FF FC 21 */	bl pntwind_get_info__FP4cXyzP4cXyzPfUc
/* 8005B274  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8005B278  7C 08 03 A6 */	mtlr r0
/* 8005B27C  38 21 00 10 */	addi r1, r1, 0x10
/* 8005B280  4E 80 00 20 */	blr 
