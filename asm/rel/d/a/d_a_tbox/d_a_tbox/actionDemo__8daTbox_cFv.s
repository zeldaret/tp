lbl_804939FC:
/* 804939FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80493A00  7C 08 02 A6 */	mflr r0
/* 80493A04  90 01 00 24 */	stw r0, 0x24(r1)
/* 80493A08  39 61 00 20 */	addi r11, r1, 0x20
/* 80493A0C  4B EC E7 D0 */	b _savegpr_29
/* 80493A10  7C 7E 1B 78 */	mr r30, r3
/* 80493A14  A8 83 00 FC */	lha r4, 0xfc(r3)
/* 80493A18  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80493A1C  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80493A20  38 7F 4F F8 */	addi r3, r31, 0x4ff8
/* 80493A24  4B BB 40 54 */	b endCheck__16dEvent_manager_cFs
/* 80493A28  2C 03 00 00 */	cmpwi r3, 0
/* 80493A2C  41 82 02 6C */	beq lbl_80493C98
/* 80493A30  88 1E 07 18 */	lbz r0, 0x718(r30)
/* 80493A34  28 00 00 00 */	cmplwi r0, 0
/* 80493A38  41 82 00 40 */	beq lbl_80493A78
/* 80493A3C  3C 60 80 49 */	lis r3, lit_3934@ha
/* 80493A40  C0 03 62 48 */	lfs f0, lit_3934@l(r3)
/* 80493A44  80 7E 07 2C */	lwz r3, 0x72c(r30)
/* 80493A48  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80493A4C  80 7E 07 2C */	lwz r3, 0x72c(r30)
/* 80493A50  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80493A54  3C 60 80 49 */	lis r3, lit_5194@ha
/* 80493A58  38 83 65 DC */	addi r4, r3, lit_5194@l
/* 80493A5C  80 64 00 00 */	lwz r3, 0(r4)
/* 80493A60  80 04 00 04 */	lwz r0, 4(r4)
/* 80493A64  90 7E 07 40 */	stw r3, 0x740(r30)
/* 80493A68  90 1E 07 44 */	stw r0, 0x744(r30)
/* 80493A6C  80 04 00 08 */	lwz r0, 8(r4)
/* 80493A70  90 1E 07 48 */	stw r0, 0x748(r30)
/* 80493A74  48 00 00 24 */	b lbl_80493A98
lbl_80493A78:
/* 80493A78  3C 60 80 49 */	lis r3, lit_5197@ha
/* 80493A7C  38 83 65 E8 */	addi r4, r3, lit_5197@l
/* 80493A80  80 64 00 00 */	lwz r3, 0(r4)
/* 80493A84  80 04 00 04 */	lwz r0, 4(r4)
/* 80493A88  90 7E 07 40 */	stw r3, 0x740(r30)
/* 80493A8C  90 1E 07 44 */	stw r0, 0x744(r30)
/* 80493A90  80 04 00 08 */	lwz r0, 8(r4)
/* 80493A94  90 1E 07 48 */	stw r0, 0x748(r30)
lbl_80493A98:
/* 80493A98  3B BF 4E C8 */	addi r29, r31, 0x4ec8
/* 80493A9C  7F A3 EB 78 */	mr r3, r29
/* 80493AA0  4B BA E9 C8 */	b reset__14dEvt_control_cFv
/* 80493AA4  3C 60 80 49 */	lis r3, lit_3933@ha
/* 80493AA8  C0 23 62 44 */	lfs f1, lit_3933@l(r3)
/* 80493AAC  4B D1 4F 98 */	b dKy_set_allcol_ratio__Ff
/* 80493AB0  A0 1E 07 54 */	lhz r0, 0x754(r30)
/* 80493AB4  54 00 07 74 */	rlwinm r0, r0, 0, 0x1d, 0x1a
/* 80493AB8  B0 1E 07 54 */	sth r0, 0x754(r30)
/* 80493ABC  7F A3 EB 78 */	mr r3, r29
/* 80493AC0  38 80 00 00 */	li r4, 0
/* 80493AC4  4B BA FB F8 */	b setPtI__14dEvt_control_cFPv
/* 80493AC8  A0 1E 09 82 */	lhz r0, 0x982(r30)
/* 80493ACC  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80493AD0  2C 00 00 21 */	cmpwi r0, 0x21
/* 80493AD4  40 82 01 CC */	bne lbl_80493CA0
/* 80493AD8  3B BF 4E 00 */	addi r29, r31, 0x4e00
/* 80493ADC  7F A3 EB 78 */	mr r3, r29
/* 80493AE0  3C 80 80 49 */	lis r4, struct_80496334+0x0@ha
/* 80493AE4  38 84 63 34 */	addi r4, r4, struct_80496334+0x0@l
/* 80493AE8  38 84 00 8C */	addi r4, r4, 0x8c
/* 80493AEC  4B ED 4E A8 */	b strcmp
/* 80493AF0  2C 03 00 00 */	cmpwi r3, 0
/* 80493AF4  40 82 01 30 */	bne lbl_80493C24
/* 80493AF8  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80493AFC  7C 00 07 75 */	extsb. r0, r0
/* 80493B00  40 82 00 B4 */	bne lbl_80493BB4
/* 80493B04  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80493B08  54 00 D6 BE */	rlwinm r0, r0, 0x1a, 0x1a, 0x1f
/* 80493B0C  2C 00 00 03 */	cmpwi r0, 3
/* 80493B10  41 82 00 14 */	beq lbl_80493B24
/* 80493B14  40 80 00 88 */	bge lbl_80493B9C
/* 80493B18  2C 00 00 02 */	cmpwi r0, 2
/* 80493B1C  40 80 00 44 */	bge lbl_80493B60
/* 80493B20  48 00 00 7C */	b lbl_80493B9C
lbl_80493B24:
/* 80493B24  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80493B28  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80493B2C  3B A3 07 F0 */	addi r29, r3, 0x7f0
/* 80493B30  7F A3 EB 78 */	mr r3, r29
/* 80493B34  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000EDFF@ha */
/* 80493B38  38 84 ED FF */	addi r4, r4, 0xEDFF /* 0x0000EDFF@l */
/* 80493B3C  4B BA 0E C8 */	b getEventReg__11dSv_event_cCFUs
/* 80493B40  7C 60 1B 78 */	mr r0, r3
/* 80493B44  7F A3 EB 78 */	mr r3, r29
/* 80493B48  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000EDFF@ha */
/* 80493B4C  38 84 ED FF */	addi r4, r4, 0xEDFF /* 0x0000EDFF@l */
/* 80493B50  60 00 00 40 */	ori r0, r0, 0x40
/* 80493B54  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 80493B58  4B BA 0E 88 */	b setEventReg__11dSv_event_cFUsUc
/* 80493B5C  48 00 01 44 */	b lbl_80493CA0
lbl_80493B60:
/* 80493B60  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80493B64  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80493B68  3B A3 07 F0 */	addi r29, r3, 0x7f0
/* 80493B6C  7F A3 EB 78 */	mr r3, r29
/* 80493B70  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000EBFF@ha */
/* 80493B74  38 84 EB FF */	addi r4, r4, 0xEBFF /* 0x0000EBFF@l */
/* 80493B78  4B BA 0E 8C */	b getEventReg__11dSv_event_cCFUs
/* 80493B7C  7C 60 1B 78 */	mr r0, r3
/* 80493B80  7F A3 EB 78 */	mr r3, r29
/* 80493B84  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000EBFF@ha */
/* 80493B88  38 84 EB FF */	addi r4, r4, 0xEBFF /* 0x0000EBFF@l */
/* 80493B8C  60 00 00 10 */	ori r0, r0, 0x10
/* 80493B90  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 80493B94  4B BA 0E 4C */	b setEventReg__11dSv_event_cFUsUc
/* 80493B98  48 00 01 08 */	b lbl_80493CA0
lbl_80493B9C:
/* 80493B9C  3C 60 80 49 */	lis r3, struct_80496334+0x0@ha
/* 80493BA0  38 63 63 34 */	addi r3, r3, struct_80496334+0x0@l
/* 80493BA4  38 63 00 94 */	addi r3, r3, 0x94
/* 80493BA8  4C C6 31 82 */	crclr 6
/* 80493BAC  4B B7 30 60 */	b OSReport_Error
/* 80493BB0  48 00 00 F0 */	b lbl_80493CA0
lbl_80493BB4:
/* 80493BB4  2C 00 00 03 */	cmpwi r0, 3
/* 80493BB8  40 82 00 E8 */	bne lbl_80493CA0
/* 80493BBC  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80493BC0  54 00 D6 BE */	rlwinm r0, r0, 0x1a, 0x1a, 0x1f
/* 80493BC4  2C 00 00 05 */	cmpwi r0, 5
/* 80493BC8  41 82 00 08 */	beq lbl_80493BD0
/* 80493BCC  48 00 00 40 */	b lbl_80493C0C
lbl_80493BD0:
/* 80493BD0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80493BD4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80493BD8  3B A3 07 F0 */	addi r29, r3, 0x7f0
/* 80493BDC  7F A3 EB 78 */	mr r3, r29
/* 80493BE0  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000F0FF@ha */
/* 80493BE4  38 84 F0 FF */	addi r4, r4, 0xF0FF /* 0x0000F0FF@l */
/* 80493BE8  4B BA 0E 1C */	b getEventReg__11dSv_event_cCFUs
/* 80493BEC  7C 60 1B 78 */	mr r0, r3
/* 80493BF0  7F A3 EB 78 */	mr r3, r29
/* 80493BF4  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000F0FF@ha */
/* 80493BF8  38 84 F0 FF */	addi r4, r4, 0xF0FF /* 0x0000F0FF@l */
/* 80493BFC  60 00 00 80 */	ori r0, r0, 0x80
/* 80493C00  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 80493C04  4B BA 0D DC */	b setEventReg__11dSv_event_cFUsUc
/* 80493C08  48 00 00 98 */	b lbl_80493CA0
lbl_80493C0C:
/* 80493C0C  3C 60 80 49 */	lis r3, struct_80496334+0x0@ha
/* 80493C10  38 63 63 34 */	addi r3, r3, struct_80496334+0x0@l
/* 80493C14  38 63 00 94 */	addi r3, r3, 0x94
/* 80493C18  4C C6 31 82 */	crclr 6
/* 80493C1C  4B B7 2F F0 */	b OSReport_Error
/* 80493C20  48 00 00 80 */	b lbl_80493CA0
lbl_80493C24:
/* 80493C24  7F A3 EB 78 */	mr r3, r29
/* 80493C28  3C 80 80 49 */	lis r4, struct_80496334+0x0@ha
/* 80493C2C  38 84 63 34 */	addi r4, r4, struct_80496334+0x0@l
/* 80493C30  38 84 00 DC */	addi r4, r4, 0xdc
/* 80493C34  4B ED 4D 60 */	b strcmp
/* 80493C38  2C 03 00 00 */	cmpwi r3, 0
/* 80493C3C  40 82 00 64 */	bne lbl_80493CA0
/* 80493C40  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80493C44  7C 00 07 75 */	extsb. r0, r0
/* 80493C48  40 82 00 58 */	bne lbl_80493CA0
/* 80493C4C  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80493C50  54 00 D6 BE */	rlwinm r0, r0, 0x1a, 0x1a, 0x1f
/* 80493C54  2C 00 00 15 */	cmpwi r0, 0x15
/* 80493C58  40 82 00 48 */	bne lbl_80493CA0
/* 80493C5C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80493C60  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80493C64  3B A3 07 F0 */	addi r29, r3, 0x7f0
/* 80493C68  7F A3 EB 78 */	mr r3, r29
/* 80493C6C  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000EFFF@ha */
/* 80493C70  38 84 EF FF */	addi r4, r4, 0xEFFF /* 0x0000EFFF@l */
/* 80493C74  4B BA 0D 90 */	b getEventReg__11dSv_event_cCFUs
/* 80493C78  7C 60 1B 78 */	mr r0, r3
/* 80493C7C  7F A3 EB 78 */	mr r3, r29
/* 80493C80  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000EFFF@ha */
/* 80493C84  38 84 EF FF */	addi r4, r4, 0xEFFF /* 0x0000EFFF@l */
/* 80493C88  60 00 00 10 */	ori r0, r0, 0x10
/* 80493C8C  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 80493C90  4B BA 0D 50 */	b setEventReg__11dSv_event_cFUsUc
/* 80493C94  48 00 00 0C */	b lbl_80493CA0
lbl_80493C98:
/* 80493C98  7F C3 F3 78 */	mr r3, r30
/* 80493C9C  4B FF F8 7D */	bl demoProc__8daTbox_cFv
lbl_80493CA0:
/* 80493CA0  80 7E 09 F4 */	lwz r3, 0x9f4(r30)
/* 80493CA4  38 03 00 01 */	addi r0, r3, 1
/* 80493CA8  90 1E 09 F4 */	stw r0, 0x9f4(r30)
/* 80493CAC  38 60 00 01 */	li r3, 1
/* 80493CB0  39 61 00 20 */	addi r11, r1, 0x20
/* 80493CB4  4B EC E5 74 */	b _restgpr_29
/* 80493CB8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80493CBC  7C 08 03 A6 */	mtlr r0
/* 80493CC0  38 21 00 20 */	addi r1, r1, 0x20
/* 80493CC4  4E 80 00 20 */	blr 
