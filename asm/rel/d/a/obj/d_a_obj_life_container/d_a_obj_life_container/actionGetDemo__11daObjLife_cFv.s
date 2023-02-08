lbl_804CDA08:
/* 804CDA08  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804CDA0C  7C 08 02 A6 */	mflr r0
/* 804CDA10  90 01 00 24 */	stw r0, 0x24(r1)
/* 804CDA14  39 61 00 20 */	addi r11, r1, 0x20
/* 804CDA18  4B E9 47 C5 */	bl _savegpr_29
/* 804CDA1C  7C 7D 1B 78 */	mr r29, r3
/* 804CDA20  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804CDA24  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804CDA28  38 7E 4F F8 */	addi r3, r30, 0x4ff8
/* 804CDA2C  3C 80 80 4D */	lis r4, d_a_obj_life_container__stringBase0@ha /* 0x804CE4A4@ha */
/* 804CDA30  38 84 E4 A4 */	addi r4, r4, d_a_obj_life_container__stringBase0@l /* 0x804CE4A4@l */
/* 804CDA34  38 84 00 08 */	addi r4, r4, 8
/* 804CDA38  4B B7 A0 A5 */	bl endCheckOld__16dEvent_manager_cFPCc
/* 804CDA3C  2C 03 00 00 */	cmpwi r3, 0
/* 804CDA40  41 82 01 6C */	beq lbl_804CDBAC
/* 804CDA44  38 7E 4E C8 */	addi r3, r30, 0x4ec8
/* 804CDA48  4B B7 4A 21 */	bl reset__14dEvt_control_cFv
/* 804CDA4C  7F A3 EB 78 */	mr r3, r29
/* 804CDA50  4B B4 C2 2D */	bl fopAcM_delete__FP10fopAc_ac_c
/* 804CDA54  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 804CDA58  54 1F C6 3E */	rlwinm r31, r0, 0x18, 0x18, 0x1f
/* 804CDA5C  28 1F 00 FF */	cmplwi r31, 0xff
/* 804CDA60  41 82 00 1C */	beq lbl_804CDA7C
/* 804CDA64  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804CDA68  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804CDA6C  7F E4 FB 78 */	mr r4, r31
/* 804CDA70  88 1D 04 BA */	lbz r0, 0x4ba(r29)
/* 804CDA74  7C 05 07 74 */	extsb r5, r0
/* 804CDA78  4B B6 7A 69 */	bl onItem__10dSv_info_cFii
lbl_804CDA7C:
/* 804CDA7C  88 1D 09 2A */	lbz r0, 0x92a(r29)
/* 804CDA80  28 00 00 21 */	cmplwi r0, 0x21
/* 804CDA84  40 82 01 28 */	bne lbl_804CDBAC
/* 804CDA88  3B DE 4E 00 */	addi r30, r30, 0x4e00
/* 804CDA8C  7F C3 F3 78 */	mr r3, r30
/* 804CDA90  3C 80 80 4D */	lis r4, d_a_obj_life_container__stringBase0@ha /* 0x804CE4A4@ha */
/* 804CDA94  38 84 E4 A4 */	addi r4, r4, d_a_obj_life_container__stringBase0@l /* 0x804CE4A4@l */
/* 804CDA98  38 84 00 18 */	addi r4, r4, 0x18
/* 804CDA9C  4B E9 AE F9 */	bl strcmp
/* 804CDAA0  2C 03 00 00 */	cmpwi r3, 0
/* 804CDAA4  40 82 00 A0 */	bne lbl_804CDB44
/* 804CDAA8  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 804CDAAC  7C 00 07 75 */	extsb. r0, r0
/* 804CDAB0  40 82 00 48 */	bne lbl_804CDAF8
/* 804CDAB4  28 1F 00 80 */	cmplwi r31, 0x80
/* 804CDAB8  40 82 00 F4 */	bne lbl_804CDBAC
/* 804CDABC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804CDAC0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804CDAC4  3B C3 07 F0 */	addi r30, r3, 0x7f0
/* 804CDAC8  7F C3 F3 78 */	mr r3, r30
/* 804CDACC  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000ECFF@ha */
/* 804CDAD0  38 84 EC FF */	addi r4, r4, 0xECFF /* 0x0000ECFF@l */
/* 804CDAD4  4B B6 6F 31 */	bl getEventReg__11dSv_event_cCFUs
/* 804CDAD8  7C 60 1B 78 */	mr r0, r3
/* 804CDADC  7F C3 F3 78 */	mr r3, r30
/* 804CDAE0  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000ECFF@ha */
/* 804CDAE4  38 84 EC FF */	addi r4, r4, 0xECFF /* 0x0000ECFF@l */
/* 804CDAE8  60 00 00 10 */	ori r0, r0, 0x10
/* 804CDAEC  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 804CDAF0  4B B6 6E F1 */	bl setEventReg__11dSv_event_cFUsUc
/* 804CDAF4  48 00 00 B8 */	b lbl_804CDBAC
lbl_804CDAF8:
/* 804CDAF8  2C 00 00 03 */	cmpwi r0, 3
/* 804CDAFC  40 82 00 B0 */	bne lbl_804CDBAC
/* 804CDB00  28 1F 00 82 */	cmplwi r31, 0x82
/* 804CDB04  40 82 00 A8 */	bne lbl_804CDBAC
/* 804CDB08  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804CDB0C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804CDB10  3B C3 07 F0 */	addi r30, r3, 0x7f0
/* 804CDB14  7F C3 F3 78 */	mr r3, r30
/* 804CDB18  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000ECFF@ha */
/* 804CDB1C  38 84 EC FF */	addi r4, r4, 0xECFF /* 0x0000ECFF@l */
/* 804CDB20  4B B6 6E E5 */	bl getEventReg__11dSv_event_cCFUs
/* 804CDB24  7C 60 1B 78 */	mr r0, r3
/* 804CDB28  7F C3 F3 78 */	mr r3, r30
/* 804CDB2C  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000ECFF@ha */
/* 804CDB30  38 84 EC FF */	addi r4, r4, 0xECFF /* 0x0000ECFF@l */
/* 804CDB34  60 00 00 04 */	ori r0, r0, 4
/* 804CDB38  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 804CDB3C  4B B6 6E A5 */	bl setEventReg__11dSv_event_cFUsUc
/* 804CDB40  48 00 00 6C */	b lbl_804CDBAC
lbl_804CDB44:
/* 804CDB44  7F C3 F3 78 */	mr r3, r30
/* 804CDB48  3C 80 80 4D */	lis r4, d_a_obj_life_container__stringBase0@ha /* 0x804CE4A4@ha */
/* 804CDB4C  38 84 E4 A4 */	addi r4, r4, d_a_obj_life_container__stringBase0@l /* 0x804CE4A4@l */
/* 804CDB50  38 84 00 20 */	addi r4, r4, 0x20
/* 804CDB54  4B E9 AE 41 */	bl strcmp
/* 804CDB58  2C 03 00 00 */	cmpwi r3, 0
/* 804CDB5C  40 82 00 50 */	bne lbl_804CDBAC
/* 804CDB60  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 804CDB64  7C 00 07 75 */	extsb. r0, r0
/* 804CDB68  40 82 00 44 */	bne lbl_804CDBAC
/* 804CDB6C  28 1F 00 8C */	cmplwi r31, 0x8c
/* 804CDB70  40 82 00 3C */	bne lbl_804CDBAC
/* 804CDB74  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804CDB78  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804CDB7C  3B C3 07 F0 */	addi r30, r3, 0x7f0
/* 804CDB80  7F C3 F3 78 */	mr r3, r30
/* 804CDB84  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000ECFF@ha */
/* 804CDB88  38 84 EC FF */	addi r4, r4, 0xECFF /* 0x0000ECFF@l */
/* 804CDB8C  4B B6 6E 79 */	bl getEventReg__11dSv_event_cCFUs
/* 804CDB90  7C 60 1B 78 */	mr r0, r3
/* 804CDB94  7F C3 F3 78 */	mr r3, r30
/* 804CDB98  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000ECFF@ha */
/* 804CDB9C  38 84 EC FF */	addi r4, r4, 0xECFF /* 0x0000ECFF@l */
/* 804CDBA0  60 00 00 02 */	ori r0, r0, 2
/* 804CDBA4  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 804CDBA8  4B B6 6E 39 */	bl setEventReg__11dSv_event_cFUsUc
lbl_804CDBAC:
/* 804CDBAC  38 60 00 01 */	li r3, 1
/* 804CDBB0  39 61 00 20 */	addi r11, r1, 0x20
/* 804CDBB4  4B E9 46 75 */	bl _restgpr_29
/* 804CDBB8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804CDBBC  7C 08 03 A6 */	mtlr r0
/* 804CDBC0  38 21 00 20 */	addi r1, r1, 0x20
/* 804CDBC4  4E 80 00 20 */	blr 
