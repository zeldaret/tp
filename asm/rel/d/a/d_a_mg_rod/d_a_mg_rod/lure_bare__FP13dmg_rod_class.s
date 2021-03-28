lbl_804B0A90:
/* 804B0A90  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804B0A94  7C 08 02 A6 */	mflr r0
/* 804B0A98  90 01 00 34 */	stw r0, 0x34(r1)
/* 804B0A9C  39 61 00 30 */	addi r11, r1, 0x30
/* 804B0AA0  4B EB 17 3C */	b _savegpr_29
/* 804B0AA4  7C 7E 1B 78 */	mr r30, r3
/* 804B0AA8  3C 60 80 4C */	lis r3, lit_3879@ha
/* 804B0AAC  3B E3 B5 34 */	addi r31, r3, lit_3879@l
/* 804B0AB0  80 1E 10 AC */	lwz r0, 0x10ac(r30)
/* 804B0AB4  90 01 00 08 */	stw r0, 8(r1)
/* 804B0AB8  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 804B0ABC  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 804B0AC0  38 81 00 08 */	addi r4, r1, 8
/* 804B0AC4  4B B6 8D 34 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 804B0AC8  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 804B0ACC  D0 1E 14 C8 */	stfs f0, 0x14c8(r30)
/* 804B0AD0  D0 1E 14 CC */	stfs f0, 0x14cc(r30)
/* 804B0AD4  A8 1E 13 B6 */	lha r0, 0x13b6(r30)
/* 804B0AD8  2C 00 00 14 */	cmpwi r0, 0x14
/* 804B0ADC  41 80 02 D4 */	blt lbl_804B0DB0
/* 804B0AE0  88 1E 14 6D */	lbz r0, 0x146d(r30)
/* 804B0AE4  7C 00 07 75 */	extsb. r0, r0
/* 804B0AE8  40 82 01 98 */	bne lbl_804B0C80
/* 804B0AEC  88 7E 10 A7 */	lbz r3, 0x10a7(r30)
/* 804B0AF0  7C 60 07 75 */	extsb. r0, r3
/* 804B0AF4  40 82 00 4C */	bne lbl_804B0B40
/* 804B0AF8  3C 60 80 4C */	lis r3, henna@ha
/* 804B0AFC  80 03 BB D0 */	lwz r0, henna@l(r3)
/* 804B0B00  28 00 00 00 */	cmplwi r0, 0
/* 804B0B04  41 82 00 20 */	beq lbl_804B0B24
/* 804B0B08  38 7E 14 74 */	addi r3, r30, 0x1474
/* 804B0B0C  7F C4 F3 78 */	mr r4, r30
/* 804B0B10  38 A0 03 E6 */	li r5, 0x3e6
/* 804B0B14  38 C0 00 00 */	li r6, 0
/* 804B0B18  38 E0 00 00 */	li r7, 0
/* 804B0B1C  4B D9 94 74 */	b init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 804B0B20  48 00 01 58 */	b lbl_804B0C78
lbl_804B0B24:
/* 804B0B24  38 7E 14 74 */	addi r3, r30, 0x1474
/* 804B0B28  7F C4 F3 78 */	mr r4, r30
/* 804B0B2C  38 A0 02 EC */	li r5, 0x2ec
/* 804B0B30  38 C0 00 00 */	li r6, 0
/* 804B0B34  38 E0 00 00 */	li r7, 0
/* 804B0B38  4B D9 94 58 */	b init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 804B0B3C  48 00 01 3C */	b lbl_804B0C78
lbl_804B0B40:
/* 804B0B40  7C 60 07 74 */	extsb r0, r3
/* 804B0B44  2C 00 00 01 */	cmpwi r0, 1
/* 804B0B48  40 82 00 4C */	bne lbl_804B0B94
/* 804B0B4C  3C 60 80 4C */	lis r3, henna@ha
/* 804B0B50  80 03 BB D0 */	lwz r0, henna@l(r3)
/* 804B0B54  28 00 00 00 */	cmplwi r0, 0
/* 804B0B58  41 82 00 20 */	beq lbl_804B0B78
/* 804B0B5C  38 7E 14 74 */	addi r3, r30, 0x1474
/* 804B0B60  7F C4 F3 78 */	mr r4, r30
/* 804B0B64  38 A0 03 E4 */	li r5, 0x3e4
/* 804B0B68  38 C0 00 00 */	li r6, 0
/* 804B0B6C  38 E0 00 00 */	li r7, 0
/* 804B0B70  4B D9 94 20 */	b init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 804B0B74  48 00 01 04 */	b lbl_804B0C78
lbl_804B0B78:
/* 804B0B78  38 7E 14 74 */	addi r3, r30, 0x1474
/* 804B0B7C  7F C4 F3 78 */	mr r4, r30
/* 804B0B80  38 A0 02 EA */	li r5, 0x2ea
/* 804B0B84  38 C0 00 00 */	li r6, 0
/* 804B0B88  38 E0 00 00 */	li r7, 0
/* 804B0B8C  4B D9 94 04 */	b init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 804B0B90  48 00 00 E8 */	b lbl_804B0C78
lbl_804B0B94:
/* 804B0B94  2C 00 00 02 */	cmpwi r0, 2
/* 804B0B98  40 82 00 4C */	bne lbl_804B0BE4
/* 804B0B9C  3C 60 80 4C */	lis r3, henna@ha
/* 804B0BA0  80 03 BB D0 */	lwz r0, henna@l(r3)
/* 804B0BA4  28 00 00 00 */	cmplwi r0, 0
/* 804B0BA8  41 82 00 20 */	beq lbl_804B0BC8
/* 804B0BAC  38 7E 14 74 */	addi r3, r30, 0x1474
/* 804B0BB0  7F C4 F3 78 */	mr r4, r30
/* 804B0BB4  38 A0 03 E5 */	li r5, 0x3e5
/* 804B0BB8  38 C0 00 00 */	li r6, 0
/* 804B0BBC  38 E0 00 00 */	li r7, 0
/* 804B0BC0  4B D9 93 D0 */	b init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 804B0BC4  48 00 00 B4 */	b lbl_804B0C78
lbl_804B0BC8:
/* 804B0BC8  38 7E 14 74 */	addi r3, r30, 0x1474
/* 804B0BCC  7F C4 F3 78 */	mr r4, r30
/* 804B0BD0  38 A0 02 EB */	li r5, 0x2eb
/* 804B0BD4  38 C0 00 00 */	li r6, 0
/* 804B0BD8  38 E0 00 00 */	li r7, 0
/* 804B0BDC  4B D9 93 B4 */	b init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 804B0BE0  48 00 00 98 */	b lbl_804B0C78
lbl_804B0BE4:
/* 804B0BE4  2C 00 00 03 */	cmpwi r0, 3
/* 804B0BE8  40 82 00 4C */	bne lbl_804B0C34
/* 804B0BEC  3C 60 80 4C */	lis r3, henna@ha
/* 804B0BF0  80 03 BB D0 */	lwz r0, henna@l(r3)
/* 804B0BF4  28 00 00 00 */	cmplwi r0, 0
/* 804B0BF8  41 82 00 20 */	beq lbl_804B0C18
/* 804B0BFC  38 7E 14 74 */	addi r3, r30, 0x1474
/* 804B0C00  7F C4 F3 78 */	mr r4, r30
/* 804B0C04  38 A0 03 E7 */	li r5, 0x3e7
/* 804B0C08  38 C0 00 00 */	li r6, 0
/* 804B0C0C  38 E0 00 00 */	li r7, 0
/* 804B0C10  4B D9 93 80 */	b init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 804B0C14  48 00 00 64 */	b lbl_804B0C78
lbl_804B0C18:
/* 804B0C18  38 7E 14 74 */	addi r3, r30, 0x1474
/* 804B0C1C  7F C4 F3 78 */	mr r4, r30
/* 804B0C20  38 A0 02 ED */	li r5, 0x2ed
/* 804B0C24  38 C0 00 00 */	li r6, 0
/* 804B0C28  38 E0 00 00 */	li r7, 0
/* 804B0C2C  4B D9 93 64 */	b init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 804B0C30  48 00 00 48 */	b lbl_804B0C78
lbl_804B0C34:
/* 804B0C34  3C 60 80 4C */	lis r3, henna@ha
/* 804B0C38  80 03 BB D0 */	lwz r0, henna@l(r3)
/* 804B0C3C  28 00 00 00 */	cmplwi r0, 0
/* 804B0C40  41 82 00 20 */	beq lbl_804B0C60
/* 804B0C44  38 7E 14 74 */	addi r3, r30, 0x1474
/* 804B0C48  7F C4 F3 78 */	mr r4, r30
/* 804B0C4C  38 A0 02 E9 */	li r5, 0x2e9
/* 804B0C50  38 C0 00 00 */	li r6, 0
/* 804B0C54  38 E0 00 00 */	li r7, 0
/* 804B0C58  4B D9 93 38 */	b init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 804B0C5C  48 00 00 1C */	b lbl_804B0C78
lbl_804B0C60:
/* 804B0C60  38 7E 14 74 */	addi r3, r30, 0x1474
/* 804B0C64  7F C4 F3 78 */	mr r4, r30
/* 804B0C68  38 A0 02 EE */	li r5, 0x2ee
/* 804B0C6C  38 C0 00 00 */	li r6, 0
/* 804B0C70  38 E0 00 00 */	li r7, 0
/* 804B0C74  4B D9 93 1C */	b init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
lbl_804B0C78:
/* 804B0C78  38 00 00 01 */	li r0, 1
/* 804B0C7C  98 1E 14 6D */	stb r0, 0x146d(r30)
lbl_804B0C80:
/* 804B0C80  88 1E 14 6D */	lbz r0, 0x146d(r30)
/* 804B0C84  2C 00 00 01 */	cmpwi r0, 1
/* 804B0C88  40 82 00 A4 */	bne lbl_804B0D2C
/* 804B0C8C  38 7E 14 74 */	addi r3, r30, 0x1474
/* 804B0C90  7F C4 F3 78 */	mr r4, r30
/* 804B0C94  38 A0 00 00 */	li r5, 0
/* 804B0C98  38 C0 00 00 */	li r6, 0
/* 804B0C9C  4B D9 96 3C */	b doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 804B0CA0  2C 03 00 00 */	cmpwi r3, 0
/* 804B0CA4  41 82 00 88 */	beq lbl_804B0D2C
/* 804B0CA8  38 00 00 02 */	li r0, 2
/* 804B0CAC  98 1E 14 6D */	stb r0, 0x146d(r30)
/* 804B0CB0  38 00 00 05 */	li r0, 5
/* 804B0CB4  B0 1E 13 B4 */	sth r0, 0x13b4(r30)
/* 804B0CB8  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 804B0CBC  D0 1E 14 10 */	stfs f0, 0x1410(r30)
/* 804B0CC0  38 00 00 6E */	li r0, 0x6e
/* 804B0CC4  98 1E 14 07 */	stb r0, 0x1407(r30)
/* 804B0CC8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804B0CCC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804B0CD0  88 03 5D B0 */	lbz r0, 0x5db0(r3)
/* 804B0CD4  7C 00 07 74 */	extsb r0, r0
/* 804B0CD8  1C 00 00 38 */	mulli r0, r0, 0x38
/* 804B0CDC  7C 63 02 14 */	add r3, r3, r0
/* 804B0CE0  80 63 5D 74 */	lwz r3, 0x5d74(r3)
/* 804B0CE4  38 63 02 48 */	addi r3, r3, 0x248
/* 804B0CE8  38 80 00 01 */	li r4, 1
/* 804B0CEC  4B CB 23 20 */	b SetTrimSize__9dCamera_cFl
/* 804B0CF0  38 00 00 04 */	li r0, 4
/* 804B0CF4  B0 1E 0F 7E */	sth r0, 0xf7e(r30)
/* 804B0CF8  38 00 00 00 */	li r0, 0
/* 804B0CFC  B0 1E 10 06 */	sth r0, 0x1006(r30)
/* 804B0D00  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804B0D04  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804B0D08  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 804B0D0C  98 03 2F C8 */	stb r0, 0x2fc8(r3)
/* 804B0D10  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 804B0D14  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 804B0D18  80 63 00 00 */	lwz r3, 0(r3)
/* 804B0D1C  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 804B0D20  38 80 00 01 */	li r4, 1
/* 804B0D24  4B E0 1D 64 */	b changeFishingBgm__8Z2SeqMgrFl
/* 804B0D28  48 00 01 34 */	b lbl_804B0E5C
lbl_804B0D2C:
/* 804B0D2C  A8 1E 13 B6 */	lha r0, 0x13b6(r30)
/* 804B0D30  2C 00 00 19 */	cmpwi r0, 0x19
/* 804B0D34  40 82 00 7C */	bne lbl_804B0DB0
/* 804B0D38  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 804B0D3C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 804B0D40  80 63 00 00 */	lwz r3, 0(r3)
/* 804B0D44  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 804B0D48  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000043@ha */
/* 804B0D4C  38 84 00 43 */	addi r4, r4, 0x0043 /* 0x01000043@l */
/* 804B0D50  4B DF E7 4C */	b subBgmStart__8Z2SeqMgrFUl
/* 804B0D54  88 1E 10 A7 */	lbz r0, 0x10a7(r30)
/* 804B0D58  7C 00 07 74 */	extsb r0, r0
/* 804B0D5C  2C 00 00 01 */	cmpwi r0, 1
/* 804B0D60  40 82 00 1C */	bne lbl_804B0D7C
/* 804B0D64  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804B0D68  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804B0D6C  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 804B0D70  38 00 00 04 */	li r0, 4
/* 804B0D74  98 03 2F C8 */	stb r0, 0x2fc8(r3)
/* 804B0D78  48 00 00 38 */	b lbl_804B0DB0
lbl_804B0D7C:
/* 804B0D7C  2C 00 00 02 */	cmpwi r0, 2
/* 804B0D80  40 82 00 1C */	bne lbl_804B0D9C
/* 804B0D84  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804B0D88  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804B0D8C  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 804B0D90  38 00 00 03 */	li r0, 3
/* 804B0D94  98 03 2F C8 */	stb r0, 0x2fc8(r3)
/* 804B0D98  48 00 00 18 */	b lbl_804B0DB0
lbl_804B0D9C:
/* 804B0D9C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804B0DA0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804B0DA4  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 804B0DA8  38 00 00 04 */	li r0, 4
/* 804B0DAC  98 03 2F C8 */	stb r0, 0x2fc8(r3)
lbl_804B0DB0:
/* 804B0DB0  88 1E 0F 80 */	lbz r0, 0xf80(r30)
/* 804B0DB4  2C 00 00 04 */	cmpwi r0, 4
/* 804B0DB8  41 82 00 14 */	beq lbl_804B0DCC
/* 804B0DBC  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 804B0DC0  D0 1E 05 94 */	stfs f0, 0x594(r30)
/* 804B0DC4  C0 1E 05 90 */	lfs f0, 0x590(r30)
/* 804B0DC8  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
lbl_804B0DCC:
/* 804B0DCC  88 1E 10 A7 */	lbz r0, 0x10a7(r30)
/* 804B0DD0  2C 00 00 03 */	cmpwi r0, 3
/* 804B0DD4  40 82 00 80 */	bne lbl_804B0E54
/* 804B0DD8  A8 1E 05 7E */	lha r0, 0x57e(r30)
/* 804B0DDC  2C 00 00 00 */	cmpwi r0, 0
/* 804B0DE0  41 82 00 74 */	beq lbl_804B0E54
/* 804B0DE4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804B0DE8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804B0DEC  83 A3 5D AC */	lwz r29, 0x5dac(r3)
/* 804B0DF0  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 804B0DF4  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 804B0DF8  80 63 00 00 */	lwz r3, 0(r3)
/* 804B0DFC  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 804B0E00  4B B5 B5 DC */	b mDoMtx_YrotS__FPA4_fs
/* 804B0E04  A8 1E 05 78 */	lha r0, 0x578(r30)
/* 804B0E08  1C 00 07 08 */	mulli r0, r0, 0x708
/* 804B0E0C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 804B0E10  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 804B0E14  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 804B0E18  7C 23 04 2E */	lfsx f1, r3, r0
/* 804B0E1C  C0 1F 01 C0 */	lfs f0, 0x1c0(r31)
/* 804B0E20  EC 00 00 72 */	fmuls f0, f0, f1
/* 804B0E24  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 804B0E28  C0 1F 01 D8 */	lfs f0, 0x1d8(r31)
/* 804B0E2C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 804B0E30  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 804B0E34  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 804B0E38  38 61 00 0C */	addi r3, r1, 0xc
/* 804B0E3C  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 804B0E40  4B DC 00 AC */	b MtxPosition__FP4cXyzP4cXyz
/* 804B0E44  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 804B0E48  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 804B0E4C  7C 65 1B 78 */	mr r5, r3
/* 804B0E50  4B E9 62 40 */	b PSVECAdd
lbl_804B0E54:
/* 804B0E54  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 804B0E58  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
lbl_804B0E5C:
/* 804B0E5C  39 61 00 30 */	addi r11, r1, 0x30
/* 804B0E60  4B EB 13 C8 */	b _restgpr_29
/* 804B0E64  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804B0E68  7C 08 03 A6 */	mtlr r0
/* 804B0E6C  38 21 00 30 */	addi r1, r1, 0x30
/* 804B0E70  4E 80 00 20 */	blr 
