lbl_80CB8C98:
/* 80CB8C98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB8C9C  7C 08 02 A6 */	mflr r0
/* 80CB8CA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB8CA4  4B FF FD 85 */	bl Delete__14daObjRCircle_cFv
/* 80CB8CA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB8CAC  7C 08 03 A6 */	mtlr r0
/* 80CB8CB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB8CB4  4E 80 00 20 */	blr 
