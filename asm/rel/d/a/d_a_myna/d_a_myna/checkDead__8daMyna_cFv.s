lbl_80949C44:
/* 80949C44  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80949C48  7C 08 02 A6 */	mflr r0
/* 80949C4C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80949C50  39 61 00 40 */	addi r11, r1, 0x40
/* 80949C54  4B A1 85 7C */	b _savegpr_26
/* 80949C58  7C 7E 1B 78 */	mr r30, r3
/* 80949C5C  3B E0 00 00 */	li r31, 0
/* 80949C60  3B A0 00 00 */	li r29, 0
/* 80949C64  3C 60 80 3A */	lis r3, saveBitLabels__16dSv_event_flag_c@ha
/* 80949C68  3B 83 72 88 */	addi r28, r3, saveBitLabels__16dSv_event_flag_c@l
/* 80949C6C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80949C70  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80949C74  3B 63 07 F0 */	addi r27, r3, 0x7f0
lbl_80949C78:
/* 80949C78  7F 5E EA 14 */	add r26, r30, r29
/* 80949C7C  88 1A 08 75 */	lbz r0, 0x875(r26)
/* 80949C80  28 00 00 02 */	cmplwi r0, 2
/* 80949C84  40 82 00 A8 */	bne lbl_80949D2C
/* 80949C88  80 7A 08 68 */	lwz r3, 0x868(r26)
/* 80949C8C  4B 6D 77 10 */	b fpcEx_IsExist__FUi
/* 80949C90  2C 03 00 00 */	cmpwi r3, 0
/* 80949C94  40 82 00 98 */	bne lbl_80949D2C
/* 80949C98  7F C3 F3 78 */	mr r3, r30
/* 80949C9C  7F E4 FB 78 */	mr r4, r31
/* 80949CA0  4B FF F4 89 */	bl deleteItem__8daMyna_cFi
/* 80949CA4  88 1E 09 2F */	lbz r0, 0x92f(r30)
/* 80949CA8  60 00 00 01 */	ori r0, r0, 1
/* 80949CAC  98 1E 09 2F */	stb r0, 0x92f(r30)
/* 80949CB0  A0 1A 08 72 */	lhz r0, 0x872(r26)
/* 80949CB4  7C 03 07 34 */	extsh r3, r0
/* 80949CB8  4B 8E EA 78 */	b dMsgObject_addTotalPrice__Fs
/* 80949CBC  80 7A 08 6C */	lwz r3, 0x86c(r26)
/* 80949CC0  4B 6C FF F8 */	b fopAcM_delete__FUi
/* 80949CC4  3C 60 80 95 */	lis r3, lit_4270@ha
/* 80949CC8  C0 03 B1 FC */	lfs f0, lit_4270@l(r3)
/* 80949CCC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80949CD0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80949CD4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80949CD8  3C 60 80 95 */	lis r3, daMyna_evtTagActor0@ha
/* 80949CDC  80 83 BA C8 */	lwz r4, daMyna_evtTagActor0@l(r3)
/* 80949CE0  28 04 00 00 */	cmplwi r4, 0
/* 80949CE4  41 82 00 28 */	beq lbl_80949D0C
/* 80949CE8  41 82 00 44 */	beq lbl_80949D2C
/* 80949CEC  D0 01 00 08 */	stfs f0, 8(r1)
/* 80949CF0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80949CF4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80949CF8  7F C3 F3 78 */	mr r3, r30
/* 80949CFC  38 A1 00 08 */	addi r5, r1, 8
/* 80949D00  48 00 00 55 */	bl chkPlayerInEvtArea__8daMyna_cFP10fopAc_ac_c4cXyz
/* 80949D04  2C 03 00 00 */	cmpwi r3, 0
/* 80949D08  40 82 00 24 */	bne lbl_80949D2C
lbl_80949D0C:
/* 80949D0C  7F 63 DB 78 */	mr r3, r27
/* 80949D10  A0 9C 01 96 */	lhz r4, 0x196(r28)
/* 80949D14  4B 6E AC A8 */	b isEventBit__11dSv_event_cCFUs
/* 80949D18  2C 03 00 00 */	cmpwi r3, 0
/* 80949D1C  40 82 00 10 */	bne lbl_80949D2C
/* 80949D20  7F 63 DB 78 */	mr r3, r27
/* 80949D24  A0 9C 01 96 */	lhz r4, 0x196(r28)
/* 80949D28  4B 6E AC 64 */	b onEventBit__11dSv_event_cFUs
lbl_80949D2C:
/* 80949D2C  3B FF 00 01 */	addi r31, r31, 1
/* 80949D30  2C 1F 00 0A */	cmpwi r31, 0xa
/* 80949D34  3B BD 00 10 */	addi r29, r29, 0x10
/* 80949D38  41 80 FF 40 */	blt lbl_80949C78
/* 80949D3C  39 61 00 40 */	addi r11, r1, 0x40
/* 80949D40  4B A1 84 DC */	b _restgpr_26
/* 80949D44  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80949D48  7C 08 03 A6 */	mtlr r0
/* 80949D4C  38 21 00 40 */	addi r1, r1, 0x40
/* 80949D50  4E 80 00 20 */	blr 
