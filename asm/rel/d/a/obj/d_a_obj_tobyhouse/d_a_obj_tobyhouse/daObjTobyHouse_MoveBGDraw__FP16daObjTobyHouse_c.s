lbl_80D176B8:
/* 80D176B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D176BC  7C 08 02 A6 */	mflr r0
/* 80D176C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D176C4  81 83 05 9C */	lwz r12, 0x59c(r3)
/* 80D176C8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80D176CC  7D 89 03 A6 */	mtctr r12
/* 80D176D0  4E 80 04 21 */	bctrl 
/* 80D176D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D176D8  7C 08 03 A6 */	mtlr r0
/* 80D176DC  38 21 00 10 */	addi r1, r1, 0x10
/* 80D176E0  4E 80 00 20 */	blr 
