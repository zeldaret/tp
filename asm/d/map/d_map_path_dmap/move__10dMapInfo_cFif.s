lbl_8003F6C8:
/* 8003F6C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003F6CC  7C 08 02 A6 */	mflr r0
/* 8003F6D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003F6D4  90 6D 88 DC */	stw r3, mNowStayRoomNo__10dMapInfo_c(r13)
/* 8003F6D8  38 60 00 01 */	li r3, 1
/* 8003F6DC  4B FF FE 95 */	bl calcNowStayFloorNo__10dMapInfo_cFfb
/* 8003F6E0  98 6D 88 D8 */	stb r3, mNowStayFloorNo__10dMapInfo_c(r13)
/* 8003F6E4  38 00 00 01 */	li r0, 1
/* 8003F6E8  98 0D 88 E0 */	stb r0, mNowStayFloorNoDecisionFlg__10dMapInfo_c(r13)
/* 8003F6EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003F6F0  7C 08 03 A6 */	mtlr r0
/* 8003F6F4  38 21 00 10 */	addi r1, r1, 0x10
/* 8003F6F8  4E 80 00 20 */	blr 
