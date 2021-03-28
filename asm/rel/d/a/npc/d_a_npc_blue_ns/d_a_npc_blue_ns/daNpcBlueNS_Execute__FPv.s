lbl_8096BF48:
/* 8096BF48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8096BF4C  7C 08 02 A6 */	mflr r0
/* 8096BF50  90 01 00 14 */	stw r0, 0x14(r1)
/* 8096BF54  4B FF D2 89 */	bl Execute__13daNpcBlueNS_cFv
/* 8096BF58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8096BF5C  7C 08 03 A6 */	mtlr r0
/* 8096BF60  38 21 00 10 */	addi r1, r1, 0x10
/* 8096BF64  4E 80 00 20 */	blr 
