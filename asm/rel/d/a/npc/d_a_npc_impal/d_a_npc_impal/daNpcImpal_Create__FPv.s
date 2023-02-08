lbl_80A0AD40:
/* 80A0AD40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A0AD44  7C 08 02 A6 */	mflr r0
/* 80A0AD48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A0AD4C  4B FF D0 79 */	bl Create__12daNpcImpal_cFv
/* 80A0AD50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A0AD54  7C 08 03 A6 */	mtlr r0
/* 80A0AD58  38 21 00 10 */	addi r1, r1, 0x10
/* 80A0AD5C  4E 80 00 20 */	blr 
