lbl_8058AA98:
/* 8058AA98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058AA9C  7C 08 02 A6 */	mflr r0
/* 8058AAA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058AAA4  81 83 05 9C */	lwz r12, 0x59c(r3)
/* 8058AAA8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8058AAAC  7D 89 03 A6 */	mtctr r12
/* 8058AAB0  4E 80 04 21 */	bctrl 
/* 8058AAB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058AAB8  7C 08 03 A6 */	mtlr r0
/* 8058AABC  38 21 00 10 */	addi r1, r1, 0x10
/* 8058AAC0  4E 80 00 20 */	blr 
