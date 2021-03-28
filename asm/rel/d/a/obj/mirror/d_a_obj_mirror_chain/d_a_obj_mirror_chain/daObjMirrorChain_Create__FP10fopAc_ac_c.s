lbl_80C97D24:
/* 80C97D24  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C97D28  7C 08 02 A6 */	mflr r0
/* 80C97D2C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C97D30  39 61 00 20 */	addi r11, r1, 0x20
/* 80C97D34  4B 6C A4 A8 */	b _savegpr_29
/* 80C97D38  7C 7E 1B 78 */	mr r30, r3
/* 80C97D3C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C97D40  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C97D44  40 82 00 B0 */	bne lbl_80C97DF4
/* 80C97D48  7F C0 F3 79 */	or. r0, r30, r30
/* 80C97D4C  41 82 00 9C */	beq lbl_80C97DE8
/* 80C97D50  7C 1F 03 78 */	mr r31, r0
/* 80C97D54  4B 38 0E 10 */	b __ct__10fopAc_ac_cFv
/* 80C97D58  38 7F 05 88 */	addi r3, r31, 0x588
/* 80C97D5C  3C 80 80 08 */	lis r4, __ct__4dBgWFv@ha
/* 80C97D60  38 84 B9 70 */	addi r4, r4, __ct__4dBgWFv@l
/* 80C97D64  3C A0 80 C9 */	lis r5, __dt__4dBgWFv@ha
/* 80C97D68  38 A5 7C C4 */	addi r5, r5, __dt__4dBgWFv@l
/* 80C97D6C  38 C0 00 C0 */	li r6, 0xc0
/* 80C97D70  38 E0 00 02 */	li r7, 2
/* 80C97D74  4B 6C 9F EC */	b __construct_array
/* 80C97D78  3C 60 80 3D */	lis r3, __vt__9J3DPacket@ha
/* 80C97D7C  38 03 D9 7C */	addi r0, r3, __vt__9J3DPacket@l
/* 80C97D80  90 1F 07 3C */	stw r0, 0x73c(r31)
/* 80C97D84  38 00 00 00 */	li r0, 0
/* 80C97D88  90 1F 07 40 */	stw r0, 0x740(r31)
/* 80C97D8C  90 1F 07 44 */	stw r0, 0x744(r31)
/* 80C97D90  90 1F 07 48 */	stw r0, 0x748(r31)
/* 80C97D94  3C 60 80 CA */	lis r3, __vt__22dScissorBegin_packet_c@ha
/* 80C97D98  38 03 81 24 */	addi r0, r3, __vt__22dScissorBegin_packet_c@l
/* 80C97D9C  90 1F 07 3C */	stw r0, 0x73c(r31)
/* 80C97DA0  38 7F 07 4C */	addi r3, r31, 0x74c
/* 80C97DA4  3C 80 80 CA */	lis r4, __ct__4cXyzFv@ha
/* 80C97DA8  38 84 80 1C */	addi r4, r4, __ct__4cXyzFv@l
/* 80C97DAC  3C A0 80 C9 */	lis r5, __dt__4cXyzFv@ha
/* 80C97DB0  38 A5 6D AC */	addi r5, r5, __dt__4cXyzFv@l
/* 80C97DB4  38 C0 00 0C */	li r6, 0xc
/* 80C97DB8  38 E0 00 04 */	li r7, 4
/* 80C97DBC  4B 6C 9F A4 */	b __construct_array
/* 80C97DC0  3C 60 80 3D */	lis r3, __vt__9J3DPacket@ha
/* 80C97DC4  38 03 D9 7C */	addi r0, r3, __vt__9J3DPacket@l
/* 80C97DC8  90 1F 07 7C */	stw r0, 0x77c(r31)
/* 80C97DCC  38 00 00 00 */	li r0, 0
/* 80C97DD0  90 1F 07 80 */	stw r0, 0x780(r31)
/* 80C97DD4  90 1F 07 84 */	stw r0, 0x784(r31)
/* 80C97DD8  90 1F 07 88 */	stw r0, 0x788(r31)
/* 80C97DDC  3C 60 80 CA */	lis r3, __vt__20dScissorEnd_packet_c@ha
/* 80C97DE0  38 03 81 10 */	addi r0, r3, __vt__20dScissorEnd_packet_c@l
/* 80C97DE4  90 1F 07 7C */	stw r0, 0x77c(r31)
lbl_80C97DE8:
/* 80C97DE8  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80C97DEC  60 00 00 08 */	ori r0, r0, 8
/* 80C97DF0  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80C97DF4:
/* 80C97DF4  38 7E 05 7C */	addi r3, r30, 0x57c
/* 80C97DF8  3C 80 80 CA */	lis r4, l_arcName@ha
/* 80C97DFC  38 84 80 80 */	addi r4, r4, l_arcName@l
/* 80C97E00  80 84 00 00 */	lwz r4, 0(r4)
/* 80C97E04  4B 39 50 B8 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80C97E08  7C 7F 1B 78 */	mr r31, r3
/* 80C97E0C  2C 1F 00 04 */	cmpwi r31, 4
/* 80C97E10  40 82 01 10 */	bne lbl_80C97F20
/* 80C97E14  7F C3 F3 78 */	mr r3, r30
/* 80C97E18  3C 80 80 C9 */	lis r4, createSolidHeap__FP10fopAc_ac_c@ha
/* 80C97E1C  38 84 6E 20 */	addi r4, r4, createSolidHeap__FP10fopAc_ac_c@l
/* 80C97E20  38 A0 71 B0 */	li r5, 0x71b0
/* 80C97E24  4B 38 26 8C */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80C97E28  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C97E2C  40 82 00 0C */	bne lbl_80C97E38
/* 80C97E30  3B E0 00 05 */	li r31, 5
/* 80C97E34  48 00 00 EC */	b lbl_80C97F20
lbl_80C97E38:
/* 80C97E38  80 1E 05 70 */	lwz r0, 0x570(r30)
/* 80C97E3C  28 00 00 00 */	cmplwi r0, 0
/* 80C97E40  41 82 00 38 */	beq lbl_80C97E78
/* 80C97E44  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C97E48  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C97E4C  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80C97E50  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 80C97E54  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 80C97E58  A0 84 02 C4 */	lhz r4, 0x2c4(r4)
/* 80C97E5C  4B 39 CB 60 */	b isEventBit__11dSv_event_cCFUs
/* 80C97E60  2C 03 00 00 */	cmpwi r3, 0
/* 80C97E64  40 82 00 14 */	bne lbl_80C97E78
/* 80C97E68  3C 60 80 CA */	lis r3, lit_3917@ha
/* 80C97E6C  C0 03 80 30 */	lfs f0, lit_3917@l(r3)
/* 80C97E70  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 80C97E74  D0 03 00 0C */	stfs f0, 0xc(r3)
lbl_80C97E78:
/* 80C97E78  38 60 00 00 */	li r3, 0
/* 80C97E7C  90 7E 07 08 */	stw r3, 0x708(r30)
/* 80C97E80  90 7E 06 38 */	stw r3, 0x638(r30)
/* 80C97E84  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C97E88  98 1E 05 91 */	stb r0, 0x591(r30)
/* 80C97E8C  90 7E 06 F8 */	stw r3, 0x6f8(r30)
/* 80C97E90  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C97E94  98 1E 06 51 */	stb r0, 0x651(r30)
/* 80C97E98  3B A0 00 01 */	li r29, 1
/* 80C97E9C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C97EA0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C97EA4  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C97EA8  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80C97EAC  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80C97EB0  7C 05 07 74 */	extsb r5, r0
/* 80C97EB4  4B 39 D4 AC */	b isSwitch__10dSv_info_cCFii
/* 80C97EB8  2C 03 00 00 */	cmpwi r3, 0
/* 80C97EBC  40 82 00 2C */	bne lbl_80C97EE8
/* 80C97EC0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C97EC4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C97EC8  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80C97ECC  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 80C97ED0  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 80C97ED4  A0 84 02 D2 */	lhz r4, 0x2d2(r4)
/* 80C97ED8  4B 39 CA E4 */	b isEventBit__11dSv_event_cCFUs
/* 80C97EDC  2C 03 00 00 */	cmpwi r3, 0
/* 80C97EE0  40 82 00 08 */	bne lbl_80C97EE8
/* 80C97EE4  3B A0 00 00 */	li r29, 0
lbl_80C97EE8:
/* 80C97EE8  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 80C97EEC  41 82 00 0C */	beq lbl_80C97EF8
/* 80C97EF0  38 1E 06 48 */	addi r0, r30, 0x648
/* 80C97EF4  48 00 00 08 */	b lbl_80C97EFC
lbl_80C97EF8:
/* 80C97EF8  38 1E 05 88 */	addi r0, r30, 0x588
lbl_80C97EFC:
/* 80C97EFC  90 1E 05 84 */	stw r0, 0x584(r30)
/* 80C97F00  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C97F04  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C97F08  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80C97F0C  80 9E 05 84 */	lwz r4, 0x584(r30)
/* 80C97F10  7F C5 F3 78 */	mr r5, r30
/* 80C97F14  4B 3D CA F4 */	b Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
/* 80C97F18  7F C3 F3 78 */	mr r3, r30
/* 80C97F1C  4B FF F6 D1 */	bl initBaseMtx__18daObjMirrorChain_cFv
lbl_80C97F20:
/* 80C97F20  7F E3 FB 78 */	mr r3, r31
/* 80C97F24  39 61 00 20 */	addi r11, r1, 0x20
/* 80C97F28  4B 6C A3 00 */	b _restgpr_29
/* 80C97F2C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C97F30  7C 08 03 A6 */	mtlr r0
/* 80C97F34  38 21 00 20 */	addi r1, r1, 0x20
/* 80C97F38  4E 80 00 20 */	blr 
