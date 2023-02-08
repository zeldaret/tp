lbl_802C780C:
/* 802C780C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C7810  7C 08 02 A6 */	mflr r0
/* 802C7814  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C7818  38 63 00 64 */	addi r3, r3, 0x64
/* 802C781C  4B FE 73 55 */	bl registMultiSePos__12Z2MultiSeMgrFP3Vec
/* 802C7820  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C7824  7C 08 03 A6 */	mtlr r0
/* 802C7828  38 21 00 10 */	addi r1, r1, 0x10
/* 802C782C  4E 80 00 20 */	blr 
