lbl_805A4690:
/* 805A4690  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A4694  7C 08 02 A6 */	mflr r0
/* 805A4698  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A469C  38 80 FF FF */	li r4, -1
/* 805A46A0  4B FF FF 59 */	bl __dt__12daTagHstop_cFv
/* 805A46A4  38 60 00 01 */	li r3, 1
/* 805A46A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A46AC  7C 08 03 A6 */	mtlr r0
/* 805A46B0  38 21 00 10 */	addi r1, r1, 0x10
/* 805A46B4  4E 80 00 20 */	blr 
