lbl_80985BCC:
/* 80985BCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80985BD0  7C 08 02 A6 */	mflr r0
/* 80985BD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80985BD8  4B FF C2 B9 */	bl Create__11daNpcChat_cFv
/* 80985BDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80985BE0  7C 08 03 A6 */	mtlr r0
/* 80985BE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80985BE8  4E 80 00 20 */	blr 
