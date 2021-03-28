lbl_8025FA98:
/* 8025FA98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8025FA9C  7C 08 02 A6 */	mflr r0
/* 8025FAA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8025FAA4  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 8025FAA8  28 03 00 00 */	cmplwi r3, 0
/* 8025FAAC  41 82 00 08 */	beq lbl_8025FAB4
/* 8025FAB0  4B FF 4B 01 */	bl paneTrans__8CPaneMgrFff
lbl_8025FAB4:
/* 8025FAB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8025FAB8  7C 08 03 A6 */	mtlr r0
/* 8025FABC  38 21 00 10 */	addi r1, r1, 0x10
/* 8025FAC0  4E 80 00 20 */	blr 
