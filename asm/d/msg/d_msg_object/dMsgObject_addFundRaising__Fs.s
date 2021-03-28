lbl_802389F8:
/* 802389F8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802389FC  7C 08 02 A6 */	mflr r0
/* 80238A00  90 01 00 24 */	stw r0, 0x24(r1)
/* 80238A04  39 61 00 20 */	addi r11, r1, 0x20
/* 80238A08  48 12 97 D5 */	bl _savegpr_29
/* 80238A0C  7C 7D 1B 78 */	mr r29, r3
/* 80238A10  4B FF FF 19 */	bl dMsgObject_getFundRaising__Fv
/* 80238A14  7C 1D 1A 14 */	add r0, r29, r3
/* 80238A18  7C 1D 07 35 */	extsh. r29, r0
/* 80238A1C  40 80 00 08 */	bge lbl_80238A24
/* 80238A20  3B A0 00 00 */	li r29, 0
lbl_80238A24:
/* 80238A24  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80238A28  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80238A2C  3B C3 07 F0 */	addi r30, r3, 0x7f0
/* 80238A30  7F C3 F3 78 */	mr r3, r30
/* 80238A34  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000F9FF@ha */
/* 80238A38  38 84 F9 FF */	addi r4, r4, 0xF9FF /* 0x0000F9FF@l */
/* 80238A3C  57 BF 04 3E */	clrlwi r31, r29, 0x10
/* 80238A40  57 A5 C6 3E */	rlwinm r5, r29, 0x18, 0x18, 0x1f
/* 80238A44  4B DF BF 9D */	bl setEventReg__11dSv_event_cFUsUc
/* 80238A48  7F C3 F3 78 */	mr r3, r30
/* 80238A4C  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FAFF@ha */
/* 80238A50  38 84 FA FF */	addi r4, r4, 0xFAFF /* 0x0000FAFF@l */
/* 80238A54  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 80238A58  4B DF BF 89 */	bl setEventReg__11dSv_event_cFUsUc
/* 80238A5C  39 61 00 20 */	addi r11, r1, 0x20
/* 80238A60  48 12 97 C9 */	bl _restgpr_29
/* 80238A64  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80238A68  7C 08 03 A6 */	mtlr r0
/* 80238A6C  38 21 00 20 */	addi r1, r1, 0x20
/* 80238A70  4E 80 00 20 */	blr 
