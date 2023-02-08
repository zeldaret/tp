lbl_80CA2B48:
/* 80CA2B48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA2B4C  7C 08 02 A6 */	mflr r0
/* 80CA2B50  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA2B54  4B FF FC 19 */	bl execute__10daObjNAN_cFv
/* 80CA2B58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA2B5C  7C 08 03 A6 */	mtlr r0
/* 80CA2B60  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA2B64  4E 80 00 20 */	blr 
