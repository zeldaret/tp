lbl_80BD9E38:
/* 80BD9E38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BD9E3C  7C 08 02 A6 */	mflr r0
/* 80BD9E40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BD9E44  81 83 05 9C */	lwz r12, 0x59c(r3)
/* 80BD9E48  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80BD9E4C  7D 89 03 A6 */	mtctr r12
/* 80BD9E50  4E 80 04 21 */	bctrl 
/* 80BD9E54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BD9E58  7C 08 03 A6 */	mtlr r0
/* 80BD9E5C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BD9E60  4E 80 00 20 */	blr 
