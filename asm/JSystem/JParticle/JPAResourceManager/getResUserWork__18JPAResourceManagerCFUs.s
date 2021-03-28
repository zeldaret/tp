lbl_80273FCC:
/* 80273FCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80273FD0  7C 08 02 A6 */	mflr r0
/* 80273FD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80273FD8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80273FDC  3B E0 00 00 */	li r31, 0
/* 80273FE0  4B FF FE 89 */	bl getResource__18JPAResourceManagerCFUs
/* 80273FE4  28 03 00 00 */	cmplwi r3, 0
/* 80273FE8  41 82 00 10 */	beq lbl_80273FF8
/* 80273FEC  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 80273FF0  80 63 00 00 */	lwz r3, 0(r3)
/* 80273FF4  83 E3 00 0C */	lwz r31, 0xc(r3)
lbl_80273FF8:
/* 80273FF8  7F E3 FB 78 */	mr r3, r31
/* 80273FFC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80274000  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80274004  7C 08 03 A6 */	mtlr r0
/* 80274008  38 21 00 10 */	addi r1, r1, 0x10
/* 8027400C  4E 80 00 20 */	blr 
