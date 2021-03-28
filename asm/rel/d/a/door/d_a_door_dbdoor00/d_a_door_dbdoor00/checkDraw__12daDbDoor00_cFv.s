lbl_8045E2DC:
/* 8045E2DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8045E2E0  7C 08 02 A6 */	mflr r0
/* 8045E2E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8045E2E8  7C 64 1B 78 */	mr r4, r3
/* 8045E2EC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8045E2F0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8045E2F4  38 63 4E C4 */	addi r3, r3, 0x4ec4
/* 8045E2F8  88 04 04 E2 */	lbz r0, 0x4e2(r4)
/* 8045E2FC  7C 04 07 74 */	extsb r4, r0
/* 8045E300  4B BC 61 E8 */	b checkRoomDisp__20dStage_roomControl_cCFi
/* 8045E304  30 03 FF FF */	addic r0, r3, -1
/* 8045E308  7C 60 19 10 */	subfe r3, r0, r3
/* 8045E30C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8045E310  7C 08 03 A6 */	mtlr r0
/* 8045E314  38 21 00 10 */	addi r1, r1, 0x10
/* 8045E318  4E 80 00 20 */	blr 
