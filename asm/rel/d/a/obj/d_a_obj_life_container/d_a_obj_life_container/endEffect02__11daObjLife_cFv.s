lbl_804CCFAC:
/* 804CCFAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804CCFB0  7C 08 02 A6 */	mflr r0
/* 804CCFB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804CCFB8  85 83 09 9C */	lwzu r12, 0x99c(r3)
/* 804CCFBC  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 804CCFC0  7D 89 03 A6 */	mtctr r12
/* 804CCFC4  4E 80 04 21 */	bctrl 
/* 804CCFC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804CCFCC  7C 08 03 A6 */	mtlr r0
/* 804CCFD0  38 21 00 10 */	addi r1, r1, 0x10
/* 804CCFD4  4E 80 00 20 */	blr 
