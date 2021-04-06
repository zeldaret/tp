lbl_800316A8:
/* 800316A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800316AC  7C 08 02 A6 */	mflr r0
/* 800316B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800316B4  7C 65 1B 78 */	mr r5, r3
/* 800316B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800316BC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800316C0  38 63 0D D8 */	addi r3, r3, 0xdd8
/* 800316C4  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FF0F@ha */
/* 800316C8  38 84 FF 0F */	addi r4, r4, 0xFF0F /* 0x0000FF0F@l */
/* 800316CC  48 00 33 15 */	bl setEventReg__11dSv_event_cFUsUc
/* 800316D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800316D4  7C 08 03 A6 */	mtlr r0
/* 800316D8  38 21 00 10 */	addi r1, r1, 0x10
/* 800316DC  4E 80 00 20 */	blr 
