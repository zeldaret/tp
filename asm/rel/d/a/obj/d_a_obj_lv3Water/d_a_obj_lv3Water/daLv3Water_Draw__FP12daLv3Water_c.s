lbl_80C59BA8:
/* 80C59BA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C59BAC  7C 08 02 A6 */	mflr r0
/* 80C59BB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C59BB4  81 83 05 9C */	lwz r12, 0x59c(r3)
/* 80C59BB8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80C59BBC  7D 89 03 A6 */	mtctr r12
/* 80C59BC0  4E 80 04 21 */	bctrl 
/* 80C59BC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C59BC8  7C 08 03 A6 */	mtlr r0
/* 80C59BCC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C59BD0  4E 80 00 20 */	blr 
