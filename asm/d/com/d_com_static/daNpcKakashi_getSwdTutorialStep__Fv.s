lbl_800316E0:
/* 800316E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800316E4  7C 08 02 A6 */	mflr r0
/* 800316E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800316EC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800316F0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800316F4  38 63 0D D8 */	addi r3, r3, 0xdd8
/* 800316F8  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FF0F@ha */
/* 800316FC  38 84 FF 0F */	addi r4, r4, 0xFF0F /* 0x0000FF0F@l */
/* 80031700  48 00 33 05 */	bl getEventReg__11dSv_event_cCFUs
/* 80031704  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 80031708  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003170C  7C 08 03 A6 */	mtlr r0
/* 80031710  38 21 00 10 */	addi r1, r1, 0x10
/* 80031714  4E 80 00 20 */	blr 
