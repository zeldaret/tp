lbl_80485EB8:
/* 80485EB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80485EBC  7C 08 02 A6 */	mflr r0
/* 80485EC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80485EC4  4B FF FF C5 */	bl Delete__12daSetBgObj_cFv
/* 80485EC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80485ECC  7C 08 03 A6 */	mtlr r0
/* 80485ED0  38 21 00 10 */	addi r1, r1, 0x10
/* 80485ED4  4E 80 00 20 */	blr 
