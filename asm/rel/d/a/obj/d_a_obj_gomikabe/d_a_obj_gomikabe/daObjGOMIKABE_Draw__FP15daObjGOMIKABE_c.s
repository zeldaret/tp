lbl_80BFF018:
/* 80BFF018  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BFF01C  7C 08 02 A6 */	mflr r0
/* 80BFF020  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BFF024  81 83 05 9C */	lwz r12, 0x59c(r3)
/* 80BFF028  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80BFF02C  7D 89 03 A6 */	mtctr r12
/* 80BFF030  4E 80 04 21 */	bctrl 
/* 80BFF034  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BFF038  7C 08 03 A6 */	mtlr r0
/* 80BFF03C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BFF040  4E 80 00 20 */	blr 
