lbl_8003F6FC:
/* 8003F6FC  38 00 00 00 */	li r0, 0
/* 8003F700  98 0D 88 D8 */	stb r0, mNowStayFloorNo__10dMapInfo_c(r13)
/* 8003F704  98 0D 88 E0 */	stb r0, mNowStayFloorNoDecisionFlg__10dMapInfo_c(r13)
/* 8003F708  38 00 FF FF */	li r0, -1
/* 8003F70C  90 0D 88 DC */	stw r0, mNowStayRoomNo__10dMapInfo_c(r13)
/* 8003F710  4E 80 00 20 */	blr 
