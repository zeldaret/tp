lbl_80BBB800:
/* 80BBB800  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BBB804  7C 08 02 A6 */	mflr r0
/* 80BBB808  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BBB80C  38 80 FF FF */	li r4, -1
/* 80BBB810  81 83 0A 3C */	lwz r12, 0xa3c(r3)
/* 80BBB814  81 8C 00 08 */	lwz r12, 8(r12)
/* 80BBB818  7D 89 03 A6 */	mtctr r12
/* 80BBB81C  4E 80 04 21 */	bctrl 
/* 80BBB820  38 60 00 01 */	li r3, 1
/* 80BBB824  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BBB828  7C 08 03 A6 */	mtlr r0
/* 80BBB82C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BBB830  4E 80 00 20 */	blr 
