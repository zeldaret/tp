lbl_80CA80E8:
/* 80CA80E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA80EC  7C 08 02 A6 */	mflr r0
/* 80CA80F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA80F4  81 83 05 9C */	lwz r12, 0x59c(r3)
/* 80CA80F8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80CA80FC  7D 89 03 A6 */	mtctr r12
/* 80CA8100  4E 80 04 21 */	bctrl 
/* 80CA8104  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA8108  7C 08 03 A6 */	mtlr r0
/* 80CA810C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA8110  4E 80 00 20 */	blr 
