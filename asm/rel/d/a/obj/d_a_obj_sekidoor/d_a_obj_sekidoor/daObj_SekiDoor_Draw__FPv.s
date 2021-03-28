lbl_80CCD938:
/* 80CCD938  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CCD93C  7C 08 02 A6 */	mflr r0
/* 80CCD940  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CCD944  81 83 05 9C */	lwz r12, 0x59c(r3)
/* 80CCD948  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80CCD94C  7D 89 03 A6 */	mtctr r12
/* 80CCD950  4E 80 04 21 */	bctrl 
/* 80CCD954  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CCD958  7C 08 03 A6 */	mtlr r0
/* 80CCD95C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CCD960  4E 80 00 20 */	blr 
