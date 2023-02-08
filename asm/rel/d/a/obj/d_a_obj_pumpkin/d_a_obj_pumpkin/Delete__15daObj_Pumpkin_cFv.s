lbl_80CB6018:
/* 80CB6018  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB601C  7C 08 02 A6 */	mflr r0
/* 80CB6020  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB6024  38 80 FF FF */	li r4, -1
/* 80CB6028  81 83 0B B8 */	lwz r12, 0xbb8(r3)
/* 80CB602C  81 8C 00 08 */	lwz r12, 8(r12)
/* 80CB6030  7D 89 03 A6 */	mtctr r12
/* 80CB6034  4E 80 04 21 */	bctrl 
/* 80CB6038  38 60 00 01 */	li r3, 1
/* 80CB603C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB6040  7C 08 03 A6 */	mtlr r0
/* 80CB6044  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB6048  4E 80 00 20 */	blr 
