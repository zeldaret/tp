lbl_805A5AE4:
/* 805A5AE4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805A5AE8  7C 08 02 A6 */	mflr r0
/* 805A5AEC  90 01 00 34 */	stw r0, 0x34(r1)
/* 805A5AF0  39 61 00 30 */	addi r11, r1, 0x30
/* 805A5AF4  4B DB C6 E8 */	b _savegpr_29
/* 805A5AF8  7C 7D 1B 78 */	mr r29, r3
/* 805A5AFC  3C 60 80 5A */	lis r3, lit_3741@ha
/* 805A5B00  3B E3 60 34 */	addi r31, r3, lit_3741@l
/* 805A5B04  3C 60 80 45 */	lis r3, m_midnaActor__9daPy_py_c@ha
/* 805A5B08  83 C3 10 18 */	lwz r30, m_midnaActor__9daPy_py_c@l(r3)
/* 805A5B0C  28 1E 00 00 */	cmplwi r30, 0
/* 805A5B10  40 82 00 0C */	bne lbl_805A5B1C
/* 805A5B14  38 60 00 01 */	li r3, 1
/* 805A5B18  48 00 04 D4 */	b lbl_805A5FEC
lbl_805A5B1C:
/* 805A5B1C  A0 7D 05 7E */	lhz r3, 0x57e(r29)
/* 805A5B20  28 03 00 00 */	cmplwi r3, 0
/* 805A5B24  41 82 00 0C */	beq lbl_805A5B30
/* 805A5B28  38 03 FF FF */	addi r0, r3, -1
/* 805A5B2C  B0 1D 05 7E */	sth r0, 0x57e(r29)
lbl_805A5B30:
/* 805A5B30  88 1D 05 6D */	lbz r0, 0x56d(r29)
/* 805A5B34  28 00 00 FF */	cmplwi r0, 0xff
/* 805A5B38  40 82 00 40 */	bne lbl_805A5B78
/* 805A5B3C  C0 1E 05 50 */	lfs f0, 0x550(r30)
/* 805A5B40  D0 1D 05 50 */	stfs f0, 0x550(r29)
/* 805A5B44  C0 1E 05 54 */	lfs f0, 0x554(r30)
/* 805A5B48  D0 1D 05 54 */	stfs f0, 0x554(r29)
/* 805A5B4C  C0 1E 05 58 */	lfs f0, 0x558(r30)
/* 805A5B50  D0 1D 05 58 */	stfs f0, 0x558(r29)
/* 805A5B54  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 805A5B58  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 805A5B5C  C0 1D 05 50 */	lfs f0, 0x550(r29)
/* 805A5B60  D0 1D 05 38 */	stfs f0, 0x538(r29)
/* 805A5B64  C0 1D 05 54 */	lfs f0, 0x554(r29)
/* 805A5B68  D0 1D 05 3C */	stfs f0, 0x53c(r29)
/* 805A5B6C  C0 1D 05 58 */	lfs f0, 0x558(r29)
/* 805A5B70  D0 1D 05 40 */	stfs f0, 0x540(r29)
/* 805A5B74  48 00 00 1C */	b lbl_805A5B90
lbl_805A5B78:
/* 805A5B78  7F A3 EB 78 */	mr r3, r29
/* 805A5B7C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 805A5B80  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 805A5B84  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 805A5B88  4B A7 4B 88 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 805A5B8C  B0 7D 04 E6 */	sth r3, 0x4e6(r29)
lbl_805A5B90:
/* 805A5B90  A0 1D 00 F8 */	lhz r0, 0xf8(r29)
/* 805A5B94  28 00 00 02 */	cmplwi r0, 2
/* 805A5B98  40 82 00 44 */	bne lbl_805A5BDC
/* 805A5B9C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805A5BA0  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 805A5BA4  38 7E 4F F8 */	addi r3, r30, 0x4ff8
/* 805A5BA8  A8 9D 05 76 */	lha r4, 0x576(r29)
/* 805A5BAC  4B AA 1E CC */	b endCheck__16dEvent_manager_cFs
/* 805A5BB0  2C 03 00 00 */	cmpwi r3, 0
/* 805A5BB4  41 82 04 1C */	beq lbl_805A5FD0
/* 805A5BB8  38 7E 4E C8 */	addi r3, r30, 0x4ec8
/* 805A5BBC  4B A9 C8 AC */	b reset__14dEvt_control_cFv
/* 805A5BC0  7F A3 EB 78 */	mr r3, r29
/* 805A5BC4  38 80 00 03 */	li r4, 3
/* 805A5BC8  38 A0 00 00 */	li r5, 0
/* 805A5BCC  4B A7 55 D0 */	b fopAcM_orderSpeakEvent__FP10fopAc_ac_cUsUs
/* 805A5BD0  38 00 00 01 */	li r0, 1
/* 805A5BD4  98 1D 05 70 */	stb r0, 0x570(r29)
/* 805A5BD8  48 00 03 F8 */	b lbl_805A5FD0
lbl_805A5BDC:
/* 805A5BDC  28 00 00 01 */	cmplwi r0, 1
/* 805A5BE0  40 82 02 40 */	bne lbl_805A5E20
/* 805A5BE4  38 00 00 00 */	li r0, 0
/* 805A5BE8  88 7E 08 4E */	lbz r3, 0x84e(r30)
/* 805A5BEC  28 03 00 02 */	cmplwi r3, 2
/* 805A5BF0  41 82 00 0C */	beq lbl_805A5BFC
/* 805A5BF4  28 03 00 01 */	cmplwi r3, 1
/* 805A5BF8  40 82 00 08 */	bne lbl_805A5C00
lbl_805A5BFC:
/* 805A5BFC  38 00 00 01 */	li r0, 1
lbl_805A5C00:
/* 805A5C00  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 805A5C04  40 82 03 CC */	bne lbl_805A5FD0
/* 805A5C08  88 1D 05 6E */	lbz r0, 0x56e(r29)
/* 805A5C0C  28 00 00 00 */	cmplwi r0, 0
/* 805A5C10  40 82 00 70 */	bne lbl_805A5C80
/* 805A5C14  38 7D 05 80 */	addi r3, r29, 0x580
/* 805A5C18  7F A4 EB 78 */	mr r4, r29
/* 805A5C1C  A8 1D 04 E8 */	lha r0, 0x4e8(r29)
/* 805A5C20  54 05 04 3E */	clrlwi r5, r0, 0x10
/* 805A5C24  38 C0 00 00 */	li r6, 0
/* 805A5C28  38 E0 00 00 */	li r7, 0
/* 805A5C2C  4B CA 43 64 */	b init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 805A5C30  38 00 00 01 */	li r0, 1
/* 805A5C34  98 1D 05 6E */	stb r0, 0x56e(r29)
/* 805A5C38  38 00 00 10 */	li r0, 0x10
/* 805A5C3C  90 01 00 0C */	stw r0, 0xc(r1)
/* 805A5C40  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 805A5C44  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 805A5C48  80 63 00 00 */	lwz r3, 0(r3)
/* 805A5C4C  38 81 00 0C */	addi r4, r1, 0xc
/* 805A5C50  38 A0 00 00 */	li r5, 0
/* 805A5C54  38 C0 00 00 */	li r6, 0
/* 805A5C58  38 E0 00 00 */	li r7, 0
/* 805A5C5C  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 805A5C60  FC 40 08 90 */	fmr f2, f1
/* 805A5C64  C0 7F 00 10 */	lfs f3, 0x10(r31)
/* 805A5C68  FC 80 18 90 */	fmr f4, f3
/* 805A5C6C  39 00 00 00 */	li r8, 0
/* 805A5C70  4B D0 5D 14 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 805A5C74  38 00 00 00 */	li r0, 0
/* 805A5C78  98 1D 05 71 */	stb r0, 0x571(r29)
/* 805A5C7C  48 00 03 54 */	b lbl_805A5FD0
lbl_805A5C80:
/* 805A5C80  38 7D 05 80 */	addi r3, r29, 0x580
/* 805A5C84  7F A4 EB 78 */	mr r4, r29
/* 805A5C88  38 A0 00 00 */	li r5, 0
/* 805A5C8C  38 C0 00 00 */	li r6, 0
/* 805A5C90  4B CA 46 48 */	b doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 805A5C94  2C 03 00 00 */	cmpwi r3, 0
/* 805A5C98  41 82 03 38 */	beq lbl_805A5FD0
/* 805A5C9C  38 7D 05 80 */	addi r3, r29, 0x580
/* 805A5CA0  38 81 00 10 */	addi r4, r1, 0x10
/* 805A5CA4  4B CA 48 84 */	b getEventId__10dMsgFlow_cFPi
/* 805A5CA8  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 805A5CAC  28 00 00 07 */	cmplwi r0, 7
/* 805A5CB0  40 82 00 14 */	bne lbl_805A5CC4
/* 805A5CB4  38 00 00 01 */	li r0, 1
/* 805A5CB8  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 805A5CBC  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 805A5CC0  98 03 00 C1 */	stb r0, 0xc1(r3)
lbl_805A5CC4:
/* 805A5CC4  88 1D 05 71 */	lbz r0, 0x571(r29)
/* 805A5CC8  28 00 00 00 */	cmplwi r0, 0
/* 805A5CCC  40 82 00 48 */	bne lbl_805A5D14
/* 805A5CD0  38 00 00 01 */	li r0, 1
/* 805A5CD4  98 1D 05 71 */	stb r0, 0x571(r29)
/* 805A5CD8  38 00 00 11 */	li r0, 0x11
/* 805A5CDC  90 01 00 08 */	stw r0, 8(r1)
/* 805A5CE0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 805A5CE4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 805A5CE8  80 63 00 00 */	lwz r3, 0(r3)
/* 805A5CEC  38 81 00 08 */	addi r4, r1, 8
/* 805A5CF0  38 A0 00 00 */	li r5, 0
/* 805A5CF4  38 C0 00 00 */	li r6, 0
/* 805A5CF8  38 E0 00 00 */	li r7, 0
/* 805A5CFC  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 805A5D00  FC 40 08 90 */	fmr f2, f1
/* 805A5D04  C0 7F 00 10 */	lfs f3, 0x10(r31)
/* 805A5D08  FC 80 18 90 */	fmr f4, f3
/* 805A5D0C  39 00 00 00 */	li r8, 0
/* 805A5D10  4B D0 5C 74 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_805A5D14:
/* 805A5D14  38 60 00 00 */	li r3, 0
/* 805A5D18  80 1E 08 94 */	lwz r0, 0x894(r30)
/* 805A5D1C  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 805A5D20  40 82 00 20 */	bne lbl_805A5D40
/* 805A5D24  88 1E 08 4E */	lbz r0, 0x84e(r30)
/* 805A5D28  28 00 00 03 */	cmplwi r0, 3
/* 805A5D2C  41 82 00 14 */	beq lbl_805A5D40
/* 805A5D30  28 00 00 04 */	cmplwi r0, 4
/* 805A5D34  41 82 00 0C */	beq lbl_805A5D40
/* 805A5D38  28 00 00 02 */	cmplwi r0, 2
/* 805A5D3C  40 82 00 08 */	bne lbl_805A5D44
lbl_805A5D40:
/* 805A5D40  38 60 00 01 */	li r3, 1
lbl_805A5D44:
/* 805A5D44  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805A5D48  41 82 00 58 */	beq lbl_805A5DA0
/* 805A5D4C  38 00 00 04 */	li r0, 4
/* 805A5D50  98 1E 08 4E */	stb r0, 0x84e(r30)
/* 805A5D54  38 80 00 00 */	li r4, 0
/* 805A5D58  A0 1E 05 E4 */	lhz r0, 0x5e4(r30)
/* 805A5D5C  28 00 02 1C */	cmplwi r0, 0x21c
/* 805A5D60  40 82 00 38 */	bne lbl_805A5D98
/* 805A5D64  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 805A5D68  38 A0 00 01 */	li r5, 1
/* 805A5D6C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805A5D70  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805A5D74  40 82 00 18 */	bne lbl_805A5D8C
/* 805A5D78  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 805A5D7C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805A5D80  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805A5D84  41 82 00 08 */	beq lbl_805A5D8C
/* 805A5D88  7C 85 23 78 */	mr r5, r4
lbl_805A5D8C:
/* 805A5D8C  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 805A5D90  41 82 00 08 */	beq lbl_805A5D98
/* 805A5D94  38 80 00 01 */	li r4, 1
lbl_805A5D98:
/* 805A5D98  7C 80 23 78 */	mr r0, r4
/* 805A5D9C  48 00 00 08 */	b lbl_805A5DA4
lbl_805A5DA0:
/* 805A5DA0  38 00 00 01 */	li r0, 1
lbl_805A5DA4:
/* 805A5DA4  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 805A5DA8  41 82 02 28 */	beq lbl_805A5FD0
/* 805A5DAC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805A5DB0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805A5DB4  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 805A5DB8  4B A9 C6 B0 */	b reset__14dEvt_control_cFv
/* 805A5DBC  38 00 00 00 */	li r0, 0
/* 805A5DC0  98 1D 05 70 */	stb r0, 0x570(r29)
/* 805A5DC4  88 1D 05 72 */	lbz r0, 0x572(r29)
/* 805A5DC8  28 00 00 00 */	cmplwi r0, 0
/* 805A5DCC  40 82 00 1C */	bne lbl_805A5DE8
/* 805A5DD0  88 1D 05 6B */	lbz r0, 0x56b(r29)
/* 805A5DD4  28 00 00 00 */	cmplwi r0, 0
/* 805A5DD8  41 82 01 F8 */	beq lbl_805A5FD0
/* 805A5DDC  88 1D 05 69 */	lbz r0, 0x569(r29)
/* 805A5DE0  28 00 00 FF */	cmplwi r0, 0xff
/* 805A5DE4  41 82 01 EC */	beq lbl_805A5FD0
lbl_805A5DE8:
/* 805A5DE8  88 1D 05 6B */	lbz r0, 0x56b(r29)
/* 805A5DEC  28 00 00 00 */	cmplwi r0, 0
/* 805A5DF0  41 82 00 1C */	beq lbl_805A5E0C
/* 805A5DF4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805A5DF8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805A5DFC  88 9D 05 69 */	lbz r4, 0x569(r29)
/* 805A5E00  88 1D 04 BA */	lbz r0, 0x4ba(r29)
/* 805A5E04  7C 05 07 74 */	extsb r5, r0
/* 805A5E08  4B A8 F3 F8 */	b onSwitch__10dSv_info_cFii
lbl_805A5E0C:
/* 805A5E0C  7F A3 EB 78 */	mr r3, r29
/* 805A5E10  4B A7 3E 6C */	b fopAcM_delete__FP10fopAc_ac_c
/* 805A5E14  A0 1D 05 7A */	lhz r0, 0x57a(r29)
/* 805A5E18  B0 1D 05 78 */	sth r0, 0x578(r29)
/* 805A5E1C  48 00 01 B4 */	b lbl_805A5FD0
lbl_805A5E20:
/* 805A5E20  88 1D 05 70 */	lbz r0, 0x570(r29)
/* 805A5E24  28 00 00 00 */	cmplwi r0, 0
/* 805A5E28  41 82 00 28 */	beq lbl_805A5E50
/* 805A5E2C  A0 1D 00 FA */	lhz r0, 0xfa(r29)
/* 805A5E30  60 00 00 01 */	ori r0, r0, 1
/* 805A5E34  B0 1D 00 FA */	sth r0, 0xfa(r29)
/* 805A5E38  7F A3 EB 78 */	mr r3, r29
/* 805A5E3C  38 80 00 03 */	li r4, 3
/* 805A5E40  38 A0 00 00 */	li r5, 0
/* 805A5E44  4B A7 53 58 */	b fopAcM_orderSpeakEvent__FP10fopAc_ac_cUsUs
/* 805A5E48  38 60 00 01 */	li r3, 1
/* 805A5E4C  48 00 01 A0 */	b lbl_805A5FEC
lbl_805A5E50:
/* 805A5E50  A0 1D 05 7C */	lhz r0, 0x57c(r29)
/* 805A5E54  28 00 03 FF */	cmplwi r0, 0x3ff
/* 805A5E58  41 82 00 34 */	beq lbl_805A5E8C
/* 805A5E5C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805A5E60  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805A5E64  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 805A5E68  54 00 0B FC */	rlwinm r0, r0, 1, 0xf, 0x1e
/* 805A5E6C  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 805A5E70  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 805A5E74  7C 84 02 2E */	lhzx r4, r4, r0
/* 805A5E78  4B A8 EB 44 */	b isEventBit__11dSv_event_cCFUs
/* 805A5E7C  2C 03 00 00 */	cmpwi r3, 0
/* 805A5E80  41 82 00 0C */	beq lbl_805A5E8C
/* 805A5E84  38 60 00 01 */	li r3, 1
/* 805A5E88  48 00 01 64 */	b lbl_805A5FEC
lbl_805A5E8C:
/* 805A5E8C  88 9D 05 69 */	lbz r4, 0x569(r29)
/* 805A5E90  28 04 00 FF */	cmplwi r4, 0xff
/* 805A5E94  41 82 00 30 */	beq lbl_805A5EC4
/* 805A5E98  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805A5E9C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805A5EA0  88 1D 04 BA */	lbz r0, 0x4ba(r29)
/* 805A5EA4  7C 05 07 74 */	extsb r5, r0
/* 805A5EA8  4B A8 F4 B8 */	b isSwitch__10dSv_info_cCFii
/* 805A5EAC  2C 03 00 00 */	cmpwi r3, 0
/* 805A5EB0  41 82 00 14 */	beq lbl_805A5EC4
/* 805A5EB4  7F A3 EB 78 */	mr r3, r29
/* 805A5EB8  4B A7 3D C4 */	b fopAcM_delete__FP10fopAc_ac_c
/* 805A5EBC  38 60 00 01 */	li r3, 1
/* 805A5EC0  48 00 01 2C */	b lbl_805A5FEC
lbl_805A5EC4:
/* 805A5EC4  38 00 00 00 */	li r0, 0
/* 805A5EC8  98 1D 05 6E */	stb r0, 0x56e(r29)
/* 805A5ECC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805A5ED0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805A5ED4  80 83 5D AC */	lwz r4, 0x5dac(r3)
/* 805A5ED8  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 805A5EDC  C0 24 04 D4 */	lfs f1, 0x4d4(r4)
/* 805A5EE0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 805A5EE4  4C 40 13 82 */	cror 2, 0, 2
/* 805A5EE8  40 82 00 E0 */	bne lbl_805A5FC8
/* 805A5EEC  C0 1D 05 D0 */	lfs f0, 0x5d0(r29)
/* 805A5EF0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 805A5EF4  4C 41 13 82 */	cror 2, 1, 2
/* 805A5EF8  40 82 00 D0 */	bne lbl_805A5FC8
/* 805A5EFC  7F A3 EB 78 */	mr r3, r29
/* 805A5F00  4B A7 4B 94 */	b fopAcM_searchActorDistanceXZ2__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 805A5F04  C0 1D 05 CC */	lfs f0, 0x5cc(r29)
/* 805A5F08  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805A5F0C  40 80 00 BC */	bge lbl_805A5FC8
/* 805A5F10  A0 1D 05 74 */	lhz r0, 0x574(r29)
/* 805A5F14  28 00 03 FF */	cmplwi r0, 0x3ff
/* 805A5F18  41 82 00 2C */	beq lbl_805A5F44
/* 805A5F1C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805A5F20  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805A5F24  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 805A5F28  54 00 0B FC */	rlwinm r0, r0, 1, 0xf, 0x1e
/* 805A5F2C  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 805A5F30  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 805A5F34  7C 84 02 2E */	lhzx r4, r4, r0
/* 805A5F38  4B A8 EA 84 */	b isEventBit__11dSv_event_cCFUs
/* 805A5F3C  2C 03 00 00 */	cmpwi r3, 0
/* 805A5F40  41 82 00 7C */	beq lbl_805A5FBC
lbl_805A5F44:
/* 805A5F44  88 9D 05 68 */	lbz r4, 0x568(r29)
/* 805A5F48  28 04 00 FF */	cmplwi r4, 0xff
/* 805A5F4C  41 82 00 20 */	beq lbl_805A5F6C
/* 805A5F50  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805A5F54  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805A5F58  88 1D 04 BA */	lbz r0, 0x4ba(r29)
/* 805A5F5C  7C 05 07 74 */	extsb r5, r0
/* 805A5F60  4B A8 F4 00 */	b isSwitch__10dSv_info_cCFii
/* 805A5F64  2C 03 00 00 */	cmpwi r3, 0
/* 805A5F68  41 82 00 54 */	beq lbl_805A5FBC
lbl_805A5F6C:
/* 805A5F6C  A0 9D 05 78 */	lhz r4, 0x578(r29)
/* 805A5F70  28 04 01 FF */	cmplwi r4, 0x1ff
/* 805A5F74  41 82 00 28 */	beq lbl_805A5F9C
/* 805A5F78  28 04 00 00 */	cmplwi r4, 0
/* 805A5F7C  41 82 00 20 */	beq lbl_805A5F9C
/* 805A5F80  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805A5F84  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805A5F88  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 805A5F8C  28 00 00 00 */	cmplwi r0, 0
/* 805A5F90  40 82 00 0C */	bne lbl_805A5F9C
/* 805A5F94  38 04 FF FF */	addi r0, r4, -1
/* 805A5F98  B0 1D 05 78 */	sth r0, 0x578(r29)
lbl_805A5F9C:
/* 805A5F9C  A0 1D 05 78 */	lhz r0, 0x578(r29)
/* 805A5FA0  28 00 00 00 */	cmplwi r0, 0
/* 805A5FA4  41 82 00 0C */	beq lbl_805A5FB0
/* 805A5FA8  28 00 01 FF */	cmplwi r0, 0x1ff
/* 805A5FAC  40 82 00 24 */	bne lbl_805A5FD0
lbl_805A5FB0:
/* 805A5FB0  7F A3 EB 78 */	mr r3, r29
/* 805A5FB4  4B FF F9 C1 */	bl eventOrder__12daTagMhint_cFv
/* 805A5FB8  48 00 00 18 */	b lbl_805A5FD0
lbl_805A5FBC:
/* 805A5FBC  A0 1D 05 7A */	lhz r0, 0x57a(r29)
/* 805A5FC0  B0 1D 05 78 */	sth r0, 0x578(r29)
/* 805A5FC4  48 00 00 0C */	b lbl_805A5FD0
lbl_805A5FC8:
/* 805A5FC8  A0 1D 05 7A */	lhz r0, 0x57a(r29)
/* 805A5FCC  B0 1D 05 78 */	sth r0, 0x578(r29)
lbl_805A5FD0:
/* 805A5FD0  A0 1D 00 FA */	lhz r0, 0xfa(r29)
/* 805A5FD4  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 805A5FD8  2C 00 00 01 */	cmpwi r0, 1
/* 805A5FDC  41 82 00 0C */	beq lbl_805A5FE8
/* 805A5FE0  38 00 00 00 */	li r0, 0
/* 805A5FE4  98 1D 05 6F */	stb r0, 0x56f(r29)
lbl_805A5FE8:
/* 805A5FE8  38 60 00 01 */	li r3, 1
lbl_805A5FEC:
/* 805A5FEC  39 61 00 30 */	addi r11, r1, 0x30
/* 805A5FF0  4B DB C2 38 */	b _restgpr_29
/* 805A5FF4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805A5FF8  7C 08 03 A6 */	mtlr r0
/* 805A5FFC  38 21 00 30 */	addi r1, r1, 0x30
/* 805A6000  4E 80 00 20 */	blr 
