lbl_802C92C8:
/* 802C92C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C92CC  7C 08 02 A6 */	mflr r0
/* 802C92D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C92D4  38 63 02 C0 */	addi r3, r3, 0x2c0
/* 802C92D8  4B FE 58 99 */	bl registMultiSePos__12Z2MultiSeMgrFP3Vec
/* 802C92DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C92E0  7C 08 03 A6 */	mtlr r0
/* 802C92E4  38 21 00 10 */	addi r1, r1, 0x10
/* 802C92E8  4E 80 00 20 */	blr 
