lbl_802C886C:
/* 802C886C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C8870  7C 08 02 A6 */	mflr r0
/* 802C8874  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C8878  38 63 01 BC */	addi r3, r3, 0x1bc
/* 802C887C  4B FE 62 F5 */	bl registMultiSePos__12Z2MultiSeMgrFP3Vec
/* 802C8880  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C8884  7C 08 03 A6 */	mtlr r0
/* 802C8888  38 21 00 10 */	addi r1, r1, 0x10
/* 802C888C  4E 80 00 20 */	blr 
