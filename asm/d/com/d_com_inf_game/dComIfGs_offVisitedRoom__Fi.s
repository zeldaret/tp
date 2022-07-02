lbl_8002FC3C:
/* 8002FC3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8002FC40  7C 08 02 A6 */	mflr r0
/* 8002FC44  90 01 00 14 */	stw r0, 0x14(r1)
/* 8002FC48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8002FC4C  7C 7F 1B 78 */	mr r31, r3
/* 8002FC50  88 0D 87 E4 */	lbz r0, mStayNo__20dStage_roomControl_c+0x0(r13)
/* 8002FC54  7C 00 07 74 */	extsb r0, r0
/* 8002FC58  3C 60 80 3F */	lis r3, mStatus__20dStage_roomControl_c@ha /* 0x803F6094@ha */
/* 8002FC5C  38 63 60 94 */	addi r3, r3, mStatus__20dStage_roomControl_c@l /* 0x803F6094@l */
/* 8002FC60  1C 00 04 04 */	mulli r0, r0, 0x404
/* 8002FC64  7C 63 02 14 */	add r3, r3, r0
/* 8002FC68  80 83 00 20 */	lwz r4, 0x20(r3)
/* 8002FC6C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8002FC70  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8002FC74  88 84 00 13 */	lbz r4, 0x13(r4)
/* 8002FC78  48 00 54 31 */	bl getSave2__10dSv_save_cFi
/* 8002FC7C  7F E4 FB 78 */	mr r4, r31
/* 8002FC80  48 00 4E 49 */	bl offVisitedRoom__13dSv_memory2_cFi
/* 8002FC84  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8002FC88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8002FC8C  7C 08 03 A6 */	mtlr r0
/* 8002FC90  38 21 00 10 */	addi r1, r1, 0x10
/* 8002FC94  4E 80 00 20 */	blr 
