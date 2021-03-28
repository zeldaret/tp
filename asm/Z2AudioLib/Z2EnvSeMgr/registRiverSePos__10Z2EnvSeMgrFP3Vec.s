lbl_802C8234:
/* 802C8234  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C8238  7C 08 02 A6 */	mflr r0
/* 802C823C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C8240  38 63 01 64 */	addi r3, r3, 0x164
/* 802C8244  4B FE 69 2D */	bl registMultiSePos__12Z2MultiSeMgrFP3Vec
/* 802C8248  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C824C  7C 08 03 A6 */	mtlr r0
/* 802C8250  38 21 00 10 */	addi r1, r1, 0x10
/* 802C8254  4E 80 00 20 */	blr 
