lbl_8025FA00:
/* 8025FA00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8025FA04  7C 08 02 A6 */	mflr r0
/* 8025FA08  90 01 00 14 */	stw r0, 0x14(r1)
/* 8025FA0C  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8025FA10  28 03 00 00 */	cmplwi r3, 0
/* 8025FA14  41 82 00 08 */	beq lbl_8025FA1C
/* 8025FA18  4B FF 4B 99 */	bl paneTrans__8CPaneMgrFff
lbl_8025FA1C:
/* 8025FA1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8025FA20  7C 08 03 A6 */	mtlr r0
/* 8025FA24  38 21 00 10 */	addi r1, r1, 0x10
/* 8025FA28  4E 80 00 20 */	blr 
