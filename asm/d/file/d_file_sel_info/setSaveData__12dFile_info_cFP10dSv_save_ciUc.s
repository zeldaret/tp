lbl_80192954:
/* 80192954  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80192958  7C 08 02 A6 */	mflr r0
/* 8019295C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80192960  39 61 00 20 */	addi r11, r1, 0x20
/* 80192964  48 1C F8 79 */	bl _savegpr_29
/* 80192968  7C 7F 1B 78 */	mr r31, r3
/* 8019296C  7C 9D 23 78 */	mr r29, r4
/* 80192970  2C 05 00 00 */	cmpwi r5, 0
/* 80192974  41 82 00 F8 */	beq lbl_80192A6C
/* 80192978  3B DD 01 B4 */	addi r30, r29, 0x1b4
/* 8019297C  88 1D 01 B4 */	lbz r0, 0x1b4(r29)
/* 80192980  7C 00 07 75 */	extsb. r0, r0
/* 80192984  40 82 00 B8 */	bne lbl_80192A3C
/* 80192988  88 1F 00 22 */	lbz r0, 0x22(r31)
/* 8019298C  28 00 00 01 */	cmplwi r0, 1
/* 80192990  40 82 00 8C */	bne lbl_80192A1C
/* 80192994  54 C6 06 3E */	clrlwi r6, r6, 0x18
/* 80192998  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 8019299C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 801929A0  88 05 0F 18 */	lbz r0, 0xf18(r5)
/* 801929A4  7C 06 00 40 */	cmplw r6, r0
/* 801929A8  40 82 00 74 */	bne lbl_80192A1C
/* 801929AC  A0 05 00 02 */	lhz r0, 2(r5)
/* 801929B0  B0 1D 00 02 */	sth r0, 2(r29)
/* 801929B4  48 00 00 ED */	bl setHeartCnt__12dFile_info_cFP10dSv_save_c
/* 801929B8  38 00 00 0C */	li r0, 0xc
/* 801929BC  B0 1D 00 02 */	sth r0, 2(r29)
/* 801929C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801929C4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801929C8  38 83 01 B4 */	addi r4, r3, 0x1b4
/* 801929CC  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 801929D0  48 1D 61 5D */	bl strcpy
/* 801929D4  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 801929D8  3C 80 80 39 */	lis r4, d_file_d_file_sel_info__stringBase0@ha
/* 801929DC  38 84 48 B8 */	addi r4, r4, d_file_d_file_sel_info__stringBase0@l
/* 801929E0  38 84 00 20 */	addi r4, r4, 0x20
/* 801929E4  48 1D 61 49 */	bl strcpy
/* 801929E8  80 7F 00 34 */	lwz r3, 0x34(r31)
/* 801929EC  3C 80 80 39 */	lis r4, d_file_d_file_sel_info__stringBase0@ha
/* 801929F0  38 84 48 B8 */	addi r4, r4, d_file_d_file_sel_info__stringBase0@l
/* 801929F4  38 84 00 20 */	addi r4, r4, 0x20
/* 801929F8  48 1D 61 35 */	bl strcpy
/* 801929FC  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 80192A00  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 80192A04  38 80 00 4D */	li r4, 0x4d
/* 80192A08  80 BF 00 38 */	lwz r5, 0x38(r31)
/* 80192A0C  38 C0 00 00 */	li r6, 0
/* 80192A10  48 08 98 41 */	bl getString__13dMeter2Info_cFUlPcP14JMSMesgEntry_c
/* 80192A14  38 60 00 02 */	li r3, 2
/* 80192A18  48 00 00 70 */	b lbl_80192A88
lbl_80192A1C:
/* 80192A1C  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 80192A20  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 80192A24  38 80 00 4D */	li r4, 0x4d
/* 80192A28  80 BF 00 38 */	lwz r5, 0x38(r31)
/* 80192A2C  38 C0 00 00 */	li r6, 0
/* 80192A30  48 08 98 21 */	bl getString__13dMeter2Info_cFUlPcP14JMSMesgEntry_c
/* 80192A34  38 60 00 01 */	li r3, 1
/* 80192A38  48 00 00 50 */	b lbl_80192A88
lbl_80192A3C:
/* 80192A3C  48 00 00 65 */	bl setHeartCnt__12dFile_info_cFP10dSv_save_c
/* 80192A40  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 80192A44  7F C4 F3 78 */	mr r4, r30
/* 80192A48  48 1D 60 E5 */	bl strcpy
/* 80192A4C  7F E3 FB 78 */	mr r3, r31
/* 80192A50  7F A4 EB 78 */	mr r4, r29
/* 80192A54  48 00 01 B5 */	bl setSaveDate__12dFile_info_cFP10dSv_save_c
/* 80192A58  7F E3 FB 78 */	mr r3, r31
/* 80192A5C  7F A4 EB 78 */	mr r4, r29
/* 80192A60  48 00 02 11 */	bl setPlayTime__12dFile_info_cFP10dSv_save_c
/* 80192A64  38 60 00 00 */	li r3, 0
/* 80192A68  48 00 00 20 */	b lbl_80192A88
lbl_80192A6C:
/* 80192A6C  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 80192A70  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 80192A74  38 80 00 51 */	li r4, 0x51
/* 80192A78  80 BF 00 38 */	lwz r5, 0x38(r31)
/* 80192A7C  38 C0 00 00 */	li r6, 0
/* 80192A80  48 08 97 D1 */	bl getString__13dMeter2Info_cFUlPcP14JMSMesgEntry_c
/* 80192A84  38 60 FF FF */	li r3, -1
lbl_80192A88:
/* 80192A88  39 61 00 20 */	addi r11, r1, 0x20
/* 80192A8C  48 1C F7 9D */	bl _restgpr_29
/* 80192A90  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80192A94  7C 08 03 A6 */	mtlr r0
/* 80192A98  38 21 00 20 */	addi r1, r1, 0x20
/* 80192A9C  4E 80 00 20 */	blr 
