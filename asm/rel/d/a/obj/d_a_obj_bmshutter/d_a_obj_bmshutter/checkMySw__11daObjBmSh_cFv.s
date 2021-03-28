lbl_80BBA044:
/* 80BBA044  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BBA048  7C 08 02 A6 */	mflr r0
/* 80BBA04C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BBA050  7C 65 1B 78 */	mr r5, r3
/* 80BBA054  A0 03 05 C8 */	lhz r0, 0x5c8(r3)
/* 80BBA058  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80BBA05C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BBA060  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BBA064  88 05 04 BA */	lbz r0, 0x4ba(r5)
/* 80BBA068  7C 05 07 74 */	extsb r5, r0
/* 80BBA06C  4B 47 B2 F4 */	b isSwitch__10dSv_info_cCFii
/* 80BBA070  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BBA074  7C 08 03 A6 */	mtlr r0
/* 80BBA078  38 21 00 10 */	addi r1, r1, 0x10
/* 80BBA07C  4E 80 00 20 */	blr 
