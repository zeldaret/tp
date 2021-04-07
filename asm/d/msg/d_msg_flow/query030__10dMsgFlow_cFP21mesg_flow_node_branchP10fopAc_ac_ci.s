lbl_8024BAE0:
/* 8024BAE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8024BAE4  7C 08 02 A6 */	mflr r0
/* 8024BAE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8024BAEC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8024BAF0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8024BAF4  38 63 0D D8 */	addi r3, r3, 0xdd8
/* 8024BAF8  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FBFF@ha */
/* 8024BAFC  38 84 FB FF */	addi r4, r4, 0xFBFF /* 0x0000FBFF@l */
/* 8024BB00  4B DE 8F 05 */	bl getEventReg__11dSv_event_cCFUs
/* 8024BB04  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 8024BB08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8024BB0C  7C 08 03 A6 */	mtlr r0
/* 8024BB10  38 21 00 10 */	addi r1, r1, 0x10
/* 8024BB14  4E 80 00 20 */	blr 
