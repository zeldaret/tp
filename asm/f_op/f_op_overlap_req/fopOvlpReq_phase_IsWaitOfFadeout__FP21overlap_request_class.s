lbl_8001E794:
/* 8001E794  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001E798  7C 08 02 A6 */	mflr r0
/* 8001E79C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001E7A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8001E7A4  7C 7F 1B 78 */	mr r31, r3
/* 8001E7A8  80 63 00 20 */	lwz r3, 0x20(r3)
/* 8001E7AC  38 63 00 C4 */	addi r3, r3, 0xc4
/* 8001E7B0  48 24 80 25 */	bl cReq_Is_Done__FP18request_base_class
/* 8001E7B4  2C 03 00 00 */	cmpwi r3, 0
/* 8001E7B8  41 82 00 14 */	beq lbl_8001E7CC
/* 8001E7BC  38 00 00 00 */	li r0, 0
/* 8001E7C0  90 1F 00 08 */	stw r0, 8(r31)
/* 8001E7C4  38 60 00 02 */	li r3, 2
/* 8001E7C8  48 00 00 08 */	b lbl_8001E7D0
lbl_8001E7CC:
/* 8001E7CC  38 60 00 00 */	li r3, 0
lbl_8001E7D0:
/* 8001E7D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8001E7D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001E7D8  7C 08 03 A6 */	mtlr r0
/* 8001E7DC  38 21 00 10 */	addi r1, r1, 0x10
/* 8001E7E0  4E 80 00 20 */	blr 
