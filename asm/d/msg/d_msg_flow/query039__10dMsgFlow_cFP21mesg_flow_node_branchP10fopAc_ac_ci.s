lbl_8024BDB0:
/* 8024BDB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8024BDB4  7C 08 02 A6 */	mflr r0
/* 8024BDB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8024BDBC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8024BDC0  93 C1 00 08 */	stw r30, 8(r1)
/* 8024BDC4  A3 C4 00 04 */	lhz r30, 4(r4)
/* 8024BDC8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8024BDCC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8024BDD0  38 63 0D D8 */	addi r3, r3, 0xdd8
/* 8024BDD4  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FBFF@ha */
/* 8024BDD8  38 84 FB FF */	addi r4, r4, 0xFBFF /* 0x0000FBFF@l */
/* 8024BDDC  4B DE 8C 29 */	bl getEventReg__11dSv_event_cCFUs
/* 8024BDE0  7C 64 1B 78 */	mr r4, r3
/* 8024BDE4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8024BDE8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8024BDEC  38 63 00 EC */	addi r3, r3, 0xec
/* 8024BDF0  38 04 FF FF */	addi r0, r4, -1
/* 8024BDF4  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 8024BDF8  4B DE 81 85 */	bl getBombNum__24dSv_player_item_record_cCFUc
/* 8024BDFC  7C 7F 1B 78 */	mr r31, r3
/* 8024BE00  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8024BE04  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8024BE08  38 63 00 F8 */	addi r3, r3, 0xf8
/* 8024BE0C  38 80 00 70 */	li r4, 0x70
/* 8024BE10  4B DE 82 E9 */	bl getBombNum__21dSv_player_item_max_cCFUc
/* 8024BE14  54 65 06 3E */	clrlwi r5, r3, 0x18
/* 8024BE18  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 8024BE1C  7C 00 F2 14 */	add r0, r0, r30
/* 8024BE20  7C A4 FE 70 */	srawi r4, r5, 0x1f
/* 8024BE24  54 03 0F FE */	srwi r3, r0, 0x1f
/* 8024BE28  7C 00 28 10 */	subfc r0, r0, r5
/* 8024BE2C  7C 04 19 14 */	adde r0, r4, r3
/* 8024BE30  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 8024BE34  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8024BE38  83 C1 00 08 */	lwz r30, 8(r1)
/* 8024BE3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8024BE40  7C 08 03 A6 */	mtlr r0
/* 8024BE44  38 21 00 10 */	addi r1, r1, 0x10
/* 8024BE48  4E 80 00 20 */	blr 
