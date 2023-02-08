lbl_8072CDA8:
/* 8072CDA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8072CDAC  7C 08 02 A6 */	mflr r0
/* 8072CDB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8072CDB4  88 03 06 DD */	lbz r0, 0x6dd(r3)
/* 8072CDB8  28 00 00 00 */	cmplwi r0, 0
/* 8072CDBC  41 82 00 30 */	beq lbl_8072CDEC
/* 8072CDC0  28 00 00 01 */	cmplwi r0, 1
/* 8072CDC4  40 82 00 14 */	bne lbl_8072CDD8
/* 8072CDC8  38 80 00 07 */	li r4, 7
/* 8072CDCC  38 A0 00 00 */	li r5, 0
/* 8072CDD0  48 00 0E ED */	bl setActionMode__8daE_OC_cFii
/* 8072CDD4  48 00 00 10 */	b lbl_8072CDE4
lbl_8072CDD8:
/* 8072CDD8  38 80 00 07 */	li r4, 7
/* 8072CDDC  38 A0 00 02 */	li r5, 2
/* 8072CDE0  48 00 0E DD */	bl setActionMode__8daE_OC_cFii
lbl_8072CDE4:
/* 8072CDE4  38 60 00 01 */	li r3, 1
/* 8072CDE8  48 00 00 08 */	b lbl_8072CDF0
lbl_8072CDEC:
/* 8072CDEC  38 60 00 00 */	li r3, 0
lbl_8072CDF0:
/* 8072CDF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8072CDF4  7C 08 03 A6 */	mtlr r0
/* 8072CDF8  38 21 00 10 */	addi r1, r1, 0x10
/* 8072CDFC  4E 80 00 20 */	blr 
