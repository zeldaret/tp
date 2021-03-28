lbl_800317A4:
/* 800317A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800317A8  7C 08 02 A6 */	mflr r0
/* 800317AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800317B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800317B4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800317B8  38 63 0D D8 */	addi r3, r3, 0xdd8
/* 800317BC  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FEFF@ha */
/* 800317C0  38 84 FE FF */	addi r4, r4, 0xFEFF /* 0x0000FEFF@l */
/* 800317C4  48 00 32 41 */	bl getEventReg__11dSv_event_cCFUs
/* 800317C8  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 800317CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800317D0  7C 08 03 A6 */	mtlr r0
/* 800317D4  38 21 00 10 */	addi r1, r1, 0x10
/* 800317D8  4E 80 00 20 */	blr 
