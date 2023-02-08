lbl_805DFC24:
/* 805DFC24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805DFC28  7C 08 02 A6 */	mflr r0
/* 805DFC2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805DFC30  28 03 00 00 */	cmplwi r3, 0
/* 805DFC34  41 82 00 10 */	beq lbl_805DFC44
/* 805DFC38  4B FF FE 95 */	bl DemoSkip__8daB_GG_cFi
/* 805DFC3C  38 60 00 01 */	li r3, 1
/* 805DFC40  48 00 00 08 */	b lbl_805DFC48
lbl_805DFC44:
/* 805DFC44  38 60 00 00 */	li r3, 0
lbl_805DFC48:
/* 805DFC48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805DFC4C  7C 08 03 A6 */	mtlr r0
/* 805DFC50  38 21 00 10 */	addi r1, r1, 0x10
/* 805DFC54  4E 80 00 20 */	blr 
