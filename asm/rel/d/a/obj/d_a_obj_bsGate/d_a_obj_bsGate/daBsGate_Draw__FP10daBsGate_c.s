lbl_80BC3068:
/* 80BC3068  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC306C  7C 08 02 A6 */	mflr r0
/* 80BC3070  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC3074  81 83 05 9C */	lwz r12, 0x59c(r3)
/* 80BC3078  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80BC307C  7D 89 03 A6 */	mtctr r12
/* 80BC3080  4E 80 04 21 */	bctrl 
/* 80BC3084  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC3088  7C 08 03 A6 */	mtlr r0
/* 80BC308C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC3090  4E 80 00 20 */	blr 
