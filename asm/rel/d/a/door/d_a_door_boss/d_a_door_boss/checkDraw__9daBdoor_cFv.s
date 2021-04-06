lbl_80670664:
/* 80670664  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80670668  7C 08 02 A6 */	mflr r0
/* 8067066C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80670670  7C 64 1B 78 */	mr r4, r3
/* 80670674  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80670678  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8067067C  38 63 4E C4 */	addi r3, r3, 0x4ec4
/* 80670680  88 04 04 E2 */	lbz r0, 0x4e2(r4)
/* 80670684  7C 04 07 74 */	extsb r4, r0
/* 80670688  4B 9B 3E 61 */	bl checkRoomDisp__20dStage_roomControl_cCFi
/* 8067068C  30 03 FF FF */	addic r0, r3, -1
/* 80670690  7C 60 19 10 */	subfe r3, r0, r3
/* 80670694  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80670698  7C 08 03 A6 */	mtlr r0
/* 8067069C  38 21 00 10 */	addi r1, r1, 0x10
/* 806706A0  4E 80 00 20 */	blr 
