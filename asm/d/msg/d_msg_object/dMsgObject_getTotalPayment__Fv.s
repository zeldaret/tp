lbl_802387C4:
/* 802387C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802387C8  7C 08 02 A6 */	mflr r0
/* 802387CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802387D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802387D4  93 C1 00 08 */	stw r30, 8(r1)
/* 802387D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 802387DC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 802387E0  3B C3 07 F0 */	addi r30, r3, 0x7f0
/* 802387E4  7F C3 F3 78 */	mr r3, r30
/* 802387E8  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FCFF@ha */
/* 802387EC  38 84 FC FF */	addi r4, r4, 0xFCFF /* 0x0000FCFF@l */
/* 802387F0  4B DF C2 15 */	bl getEventReg__11dSv_event_cCFUs
/* 802387F4  7C 7F 1B 78 */	mr r31, r3
/* 802387F8  7F C3 F3 78 */	mr r3, r30
/* 802387FC  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FBFF@ha */
/* 80238800  38 84 FB FF */	addi r4, r4, 0xFBFF /* 0x0000FBFF@l */
/* 80238804  4B DF C2 01 */	bl getEventReg__11dSv_event_cCFUs
/* 80238808  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8023880C  53 E0 44 2E */	rlwimi r0, r31, 8, 0x10, 0x17
/* 80238810  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 80238814  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80238818  83 C1 00 08 */	lwz r30, 8(r1)
/* 8023881C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80238820  7C 08 03 A6 */	mtlr r0
/* 80238824  38 21 00 10 */	addi r1, r1, 0x10
/* 80238828  4E 80 00 20 */	blr 
