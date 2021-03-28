lbl_8005674C:
/* 8005674C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80056750  7C 08 02 A6 */	mflr r0
/* 80056754  90 01 00 14 */	stw r0, 0x14(r1)
/* 80056758  80 83 00 34 */	lwz r4, 0x34(r3)
/* 8005675C  4B FF FF 79 */	bl drawOpaDrawList__12dDlst_list_cFP13J3DDrawBuffer
/* 80056760  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80056764  7C 08 03 A6 */	mtlr r0
/* 80056768  38 21 00 10 */	addi r1, r1, 0x10
/* 8005676C  4E 80 00 20 */	blr 
