lbl_800A5CC8:
/* 800A5CC8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 800A5CCC  7C 08 02 A6 */	mflr r0
/* 800A5CD0  90 01 00 54 */	stw r0, 0x54(r1)
/* 800A5CD4  39 61 00 50 */	addi r11, r1, 0x50
/* 800A5CD8  48 2B C4 F1 */	bl _savegpr_24
/* 800A5CDC  7C 7F 1B 78 */	mr r31, r3
/* 800A5CE0  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 800A5CE4  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 800A5CE8  40 82 00 1C */	bne lbl_800A5D04
/* 800A5CEC  28 1F 00 00 */	cmplwi r31, 0
/* 800A5CF0  41 82 00 08 */	beq lbl_800A5CF8
/* 800A5CF4  48 02 96 8D */	bl __ct__9daAlink_cFv
lbl_800A5CF8:
/* 800A5CF8  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 800A5CFC  60 00 00 08 */	ori r0, r0, 8
/* 800A5D00  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_800A5D04:
/* 800A5D04  88 0D 8A 50 */	lbz r0, struct_80450FD0+0x0(r13)
/* 800A5D08  7C 00 07 75 */	extsb. r0, r0
/* 800A5D0C  40 82 00 14 */	bne lbl_800A5D20
/* 800A5D10  38 00 00 00 */	li r0, 0
/* 800A5D14  90 0D 8A 4C */	stw r0, bgWaitFlg(r13)
/* 800A5D18  38 00 00 01 */	li r0, 1
/* 800A5D1C  98 0D 8A 50 */	stb r0, struct_80450FD0+0x0(r13)
lbl_800A5D20:
/* 800A5D20  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800A5D24  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l
/* 800A5D28  80 1C 0D D0 */	lwz r0, 0xdd0(r28)
/* 800A5D2C  54 1B 07 3E */	clrlwi r27, r0, 0x1c
/* 800A5D30  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 800A5D34  54 19 A6 FE */	rlwinm r25, r0, 0x14, 0x1b, 0x1f
/* 800A5D38  AB DC 4E 08 */	lha r30, 0x4e08(r28)
/* 800A5D3C  7F E3 FB 78 */	mr r3, r31
/* 800A5D40  7F 64 DB 78 */	mr r4, r27
/* 800A5D44  7F 25 CB 78 */	mr r5, r25
/* 800A5D48  4B FF F7 AD */	bl checkHorseStart__9daAlink_cFUli
/* 800A5D4C  7C 7D 1B 78 */	mr r29, r3
/* 800A5D50  3B 00 00 00 */	li r24, 0
/* 800A5D54  3C 60 80 39 */	lis r3, d_a_d_a_alink__stringBase0@ha
/* 800A5D58  38 63 20 94 */	addi r3, r3, d_a_d_a_alink__stringBase0@l
/* 800A5D5C  38 63 01 15 */	addi r3, r3, 0x115
/* 800A5D60  4B FF 7D 01 */	bl checkStageName__9daAlink_cFPCc
/* 800A5D64  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800A5D68  41 82 00 34 */	beq lbl_800A5D9C
/* 800A5D6C  88 0D 87 E4 */	lbz r0, struct_80450D64+0x0(r13)
/* 800A5D70  7C 00 07 75 */	extsb. r0, r0
/* 800A5D74  40 82 00 28 */	bne lbl_800A5D9C
/* 800A5D78  38 60 00 00 */	li r3, 0
/* 800A5D7C  4B F8 6C 01 */	bl getLayerNo__14dComIfG_play_cFi
/* 800A5D80  2C 03 00 00 */	cmpwi r3, 0
/* 800A5D84  40 82 00 18 */	bne lbl_800A5D9C
/* 800A5D88  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 800A5D8C  C0 02 98 30 */	lfs f0, lit_58630(r2)
/* 800A5D90  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800A5D94  40 81 00 08 */	ble lbl_800A5D9C
/* 800A5D98  3B 00 00 01 */	li r24, 1
lbl_800A5D9C:
/* 800A5D9C  57 1A 06 3E */	clrlwi r26, r24, 0x18
/* 800A5DA0  80 0D 8A 4C */	lwz r0, bgWaitFlg(r13)
/* 800A5DA4  2C 00 00 00 */	cmpwi r0, 0
/* 800A5DA8  40 82 02 D8 */	bne lbl_800A6080
/* 800A5DAC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800A5DB0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800A5DB4  88 03 00 13 */	lbz r0, 0x13(r3)
/* 800A5DB8  28 00 00 2E */	cmplwi r0, 0x2e
/* 800A5DBC  40 82 00 28 */	bne lbl_800A5DE4
/* 800A5DC0  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 800A5DC4  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 800A5DC8  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 800A5DCC  A0 84 00 5E */	lhz r4, 0x5e(r4)
/* 800A5DD0  4B F8 EB ED */	bl isEventBit__11dSv_event_cCFUs
/* 800A5DD4  2C 03 00 00 */	cmpwi r3, 0
/* 800A5DD8  41 82 00 0C */	beq lbl_800A5DE4
/* 800A5DDC  38 60 00 2F */	li r3, 0x2f
/* 800A5DE0  4B F8 90 D1 */	bl dComIfGs_setSelectEquipClothes__FUc
lbl_800A5DE4:
/* 800A5DE4  2C 1A 00 00 */	cmpwi r26, 0
/* 800A5DE8  41 82 00 1C */	beq lbl_800A5E04
/* 800A5DEC  7F E3 FB 78 */	mr r3, r31
/* 800A5DF0  48 01 56 19 */	bl checkMagicArmorHeavy__9daAlink_cCFv
/* 800A5DF4  2C 03 00 00 */	cmpwi r3, 0
/* 800A5DF8  41 82 00 0C */	beq lbl_800A5E04
/* 800A5DFC  38 60 00 2F */	li r3, 0x2f
/* 800A5E00  4B F8 90 B1 */	bl dComIfGs_setSelectEquipClothes__FUc
lbl_800A5E04:
/* 800A5E04  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800A5E08  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800A5E0C  93 E3 5D AC */	stw r31, 0x5dac(r3)
/* 800A5E10  93 E3 5D B4 */	stw r31, 0x5db4(r3)
/* 800A5E14  7F E3 FB 78 */	mr r3, r31
/* 800A5E18  4B F7 3A AD */	bl fopAcM_setStageLayer__FPv
/* 800A5E1C  28 1B 00 07 */	cmplwi r27, 7
/* 800A5E20  40 82 00 34 */	bne lbl_800A5E54
/* 800A5E24  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800A5E28  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800A5E2C  C0 03 0E D8 */	lfs f0, 0xed8(r3)
/* 800A5E30  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 800A5E34  C0 03 0E DC */	lfs f0, 0xedc(r3)
/* 800A5E38  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 800A5E3C  C0 03 0E E0 */	lfs f0, 0xee0(r3)
/* 800A5E40  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 800A5E44  A8 03 0E E8 */	lha r0, 0xee8(r3)
/* 800A5E48  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 800A5E4C  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 800A5E50  B0 1F 04 DE */	sth r0, 0x4de(r31)
lbl_800A5E54:
/* 800A5E54  7F E3 FB 78 */	mr r3, r31
/* 800A5E58  48 06 2B 91 */	bl checkBossOctaIealRoom__9daAlink_cFv
/* 800A5E5C  2C 03 00 00 */	cmpwi r3, 0
/* 800A5E60  40 82 00 10 */	bne lbl_800A5E70
/* 800A5E64  4B F8 99 AD */	bl dComIfGs_Wolf_Change_Check__Fv
/* 800A5E68  2C 03 00 01 */	cmpwi r3, 1
/* 800A5E6C  41 82 00 18 */	beq lbl_800A5E84
lbl_800A5E70:
/* 800A5E70  7F C0 07 34 */	extsh r0, r30
/* 800A5E74  2C 00 FF FC */	cmpwi r0, -4
/* 800A5E78  41 82 00 0C */	beq lbl_800A5E84
/* 800A5E7C  28 1B 00 09 */	cmplwi r27, 9
/* 800A5E80  40 82 00 64 */	bne lbl_800A5EE4
lbl_800A5E84:
/* 800A5E84  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 800A5E88  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l
/* 800A5E8C  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 800A5E90  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 800A5E94  7C 64 02 14 */	add r3, r4, r0
/* 800A5E98  C0 03 00 04 */	lfs f0, 4(r3)
/* 800A5E9C  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 800A5EA0  C0 42 93 10 */	lfs f2, lit_7306(r2)
/* 800A5EA4  EC 02 00 32 */	fmuls f0, f2, f0
/* 800A5EA8  EC 81 00 2A */	fadds f4, f1, f0
/* 800A5EAC  C0 22 93 B0 */	lfs f1, lit_10039(r2)
/* 800A5EB0  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 800A5EB4  EC 61 00 2A */	fadds f3, f1, f0
/* 800A5EB8  7C 04 04 2E */	lfsx f0, r4, r0
/* 800A5EBC  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 800A5EC0  EC 02 00 32 */	fmuls f0, f2, f0
/* 800A5EC4  EC 01 00 2A */	fadds f0, f1, f0
/* 800A5EC8  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 800A5ECC  D0 7F 05 54 */	stfs f3, 0x554(r31)
/* 800A5ED0  D0 9F 05 58 */	stfs f4, 0x558(r31)
/* 800A5ED4  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 800A5ED8  64 00 02 00 */	oris r0, r0, 0x200
/* 800A5EDC  90 1F 05 74 */	stw r0, 0x574(r31)
/* 800A5EE0  48 00 00 30 */	b lbl_800A5F10
lbl_800A5EE4:
/* 800A5EE4  2C 1D 00 00 */	cmpwi r29, 0
/* 800A5EE8  41 82 00 18 */	beq lbl_800A5F00
/* 800A5EEC  C0 22 98 34 */	lfs f1, lit_58631(r2)
/* 800A5EF0  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 800A5EF4  EC 01 00 2A */	fadds f0, f1, f0
/* 800A5EF8  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 800A5EFC  48 00 00 14 */	b lbl_800A5F10
lbl_800A5F00:
/* 800A5F00  C0 22 93 E0 */	lfs f1, lit_11673(r2)
/* 800A5F04  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 800A5F08  EC 01 00 2A */	fadds f0, f1, f0
/* 800A5F0C  D0 1F 05 54 */	stfs f0, 0x554(r31)
lbl_800A5F10:
/* 800A5F10  38 00 FF FF */	li r0, -1
/* 800A5F14  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 800A5F18  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800A5F1C  3B 03 61 C0 */	addi r24, r3, g_dComIfG_gameInfo@l
/* 800A5F20  88 18 56 B4 */	lbz r0, 0x56b4(r24)
/* 800A5F24  28 00 00 00 */	cmplwi r0, 0
/* 800A5F28  40 82 00 0C */	bne lbl_800A5F34
/* 800A5F2C  38 60 00 00 */	li r3, 0
/* 800A5F30  48 00 06 C4 */	b lbl_800A65F4
lbl_800A5F34:
/* 800A5F34  7F E3 FB 78 */	mr r3, r31
/* 800A5F38  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 800A5F3C  54 04 01 8C */	rlwinm r4, r0, 0, 6, 6
/* 800A5F40  48 09 9F E9 */	bl setArcName__9daAlink_cFi
/* 800A5F44  7F E3 FB 78 */	mr r3, r31
/* 800A5F48  38 9F 06 38 */	addi r4, r31, 0x638
/* 800A5F4C  3C A0 00 0A */	lis r5, 0x000A /* 0x000A2800@ha */
/* 800A5F50  38 A5 28 00 */	addi r5, r5, 0x2800 /* 0x000A2800@l */
/* 800A5F54  48 09 A0 85 */	bl setOriginalHeap__9daAlink_cFPP10JKRExpHeapUl
/* 800A5F58  38 7F 06 2C */	addi r3, r31, 0x62c
/* 800A5F5C  80 9F 06 34 */	lwz r4, 0x634(r31)
/* 800A5F60  80 BF 06 38 */	lwz r5, 0x638(r31)
/* 800A5F64  4B F8 70 5D */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCcP7JKRHeap
/* 800A5F68  2C 03 00 04 */	cmpwi r3, 4
/* 800A5F6C  41 82 00 0C */	beq lbl_800A5F78
/* 800A5F70  38 60 00 00 */	li r3, 0
/* 800A5F74  48 00 06 80 */	b lbl_800A65F4
lbl_800A5F78:
/* 800A5F78  7F E3 FB 78 */	mr r3, r31
/* 800A5F7C  48 09 A0 15 */	bl setShieldArcName__9daAlink_cFv
/* 800A5F80  7F E3 FB 78 */	mr r3, r31
/* 800A5F84  38 9F 06 48 */	addi r4, r31, 0x648
/* 800A5F88  38 A0 70 00 */	li r5, 0x7000
/* 800A5F8C  48 09 A0 4D */	bl setOriginalHeap__9daAlink_cFPP10JKRExpHeapUl
/* 800A5F90  38 7F 06 3C */	addi r3, r31, 0x63c
/* 800A5F94  80 9F 06 44 */	lwz r4, 0x644(r31)
/* 800A5F98  80 BF 06 48 */	lwz r5, 0x648(r31)
/* 800A5F9C  4B F8 70 25 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCcP7JKRHeap
/* 800A5FA0  2C 03 00 04 */	cmpwi r3, 4
/* 800A5FA4  41 82 00 0C */	beq lbl_800A5FB0
/* 800A5FA8  38 60 00 00 */	li r3, 0
/* 800A5FAC  48 00 06 48 */	b lbl_800A65F4
lbl_800A5FB0:
/* 800A5FB0  7F E3 FB 78 */	mr r3, r31
/* 800A5FB4  3C 80 80 0A */	lis r4, daAlink_createHeap__FP10fopAc_ac_c@ha
/* 800A5FB8  38 84 48 F0 */	addi r4, r4, daAlink_createHeap__FP10fopAc_ac_c@l
/* 800A5FBC  3C A0 C0 04 */	lis r5, 0xC004 /* 0xC003E930@ha */
/* 800A5FC0  38 A5 E9 30 */	addi r5, r5, 0xE930 /* 0xC003E930@l */
/* 800A5FC4  4B F7 44 ED */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 800A5FC8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800A5FCC  40 82 00 0C */	bne lbl_800A5FD8
/* 800A5FD0  38 60 00 05 */	li r3, 5
/* 800A5FD4  48 00 06 20 */	b lbl_800A65F4
lbl_800A5FD8:
/* 800A5FD8  38 18 56 B8 */	addi r0, r24, 0x56b8
/* 800A5FDC  90 1F 27 E0 */	stw r0, 0x27e0(r31)
/* 800A5FE0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800A5FE4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800A5FE8  88 03 5D B0 */	lbz r0, 0x5db0(r3)
/* 800A5FEC  7C 00 07 74 */	extsb r0, r0
/* 800A5FF0  90 1F 31 7C */	stw r0, 0x317c(r31)
/* 800A5FF4  7F E3 FB 78 */	mr r3, r31
/* 800A5FF8  4B FF EC BD */	bl playerInit__9daAlink_cFv
/* 800A5FFC  38 00 00 01 */	li r0, 1
/* 800A6000  90 0D 8A 4C */	stw r0, bgWaitFlg(r13)
/* 800A6004  7F E3 FB 78 */	mr r3, r31
/* 800A6008  4B FF EC 39 */	bl checkCanoeStart__9daAlink_cFv
/* 800A600C  2C 03 00 00 */	cmpwi r3, 0
/* 800A6010  41 82 00 30 */	beq lbl_800A6040
/* 800A6014  38 60 00 ED */	li r3, 0xed
/* 800A6018  38 80 00 00 */	li r4, 0
/* 800A601C  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 800A6020  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 800A6024  7C 06 07 74 */	extsb r6, r0
/* 800A6028  38 FF 04 E4 */	addi r7, r31, 0x4e4
/* 800A602C  39 00 00 00 */	li r8, 0
/* 800A6030  39 20 FF FF */	li r9, -1
/* 800A6034  4B F7 3D 65 */	bl fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
/* 800A6038  90 7F 29 00 */	stw r3, 0x2900(r31)
/* 800A603C  48 00 00 44 */	b lbl_800A6080
lbl_800A6040:
/* 800A6040  28 1B 00 0B */	cmplwi r27, 0xb
/* 800A6044  40 82 00 34 */	bne lbl_800A6078
/* 800A6048  38 60 01 87 */	li r3, 0x187
/* 800A604C  3C 80 00 02 */	lis r4, 0x0002 /* 0x0001FFFF@ha */
/* 800A6050  38 84 FF FF */	addi r4, r4, 0xFFFF /* 0x0001FFFF@l */
/* 800A6054  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 800A6058  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 800A605C  7C 06 07 74 */	extsb r6, r0
/* 800A6060  38 FF 04 E4 */	addi r7, r31, 0x4e4
/* 800A6064  39 00 00 00 */	li r8, 0
/* 800A6068  39 20 FF FF */	li r9, -1
/* 800A606C  4B F7 3D 2D */	bl fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
/* 800A6070  90 7F 29 00 */	stw r3, 0x2900(r31)
/* 800A6074  48 00 00 0C */	b lbl_800A6080
lbl_800A6078:
/* 800A6078  38 00 FF FF */	li r0, -1
/* 800A607C  90 1F 29 00 */	stw r0, 0x2900(r31)
lbl_800A6080:
/* 800A6080  38 7F 19 70 */	addi r3, r31, 0x1970
/* 800A6084  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 800A6088  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 800A608C  3B 64 0F 38 */	addi r27, r4, 0xf38
/* 800A6090  7F 64 DB 78 */	mr r4, r27
/* 800A6094  4B FD 0A 19 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 800A6098  3B 00 00 00 */	li r24, 0
/* 800A609C  C0 22 93 A4 */	lfs f1, lit_9138(r2)
/* 800A60A0  C0 1F 1A 08 */	lfs f0, 0x1a08(r31)
/* 800A60A4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 800A60A8  41 82 01 30 */	beq lbl_800A61D8
/* 800A60AC  2C 19 00 0E */	cmpwi r25, 0xe
/* 800A60B0  40 82 00 18 */	bne lbl_800A60C8
/* 800A60B4  7F 63 DB 78 */	mr r3, r27
/* 800A60B8  38 9F 1A 60 */	addi r4, r31, 0x1a60
/* 800A60BC  4B FC EA 01 */	bl ChkMoveBG__4dBgSFRC13cBgS_PolyInfo
/* 800A60C0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800A60C4  41 82 01 14 */	beq lbl_800A61D8
lbl_800A60C8:
/* 800A60C8  7F C0 07 34 */	extsh r0, r30
/* 800A60CC  2C 00 FF FC */	cmpwi r0, -4
/* 800A60D0  40 82 00 1C */	bne lbl_800A60EC
/* 800A60D4  3C 60 80 12 */	lis r3, daAlink_searchPortal__FP10fopAc_ac_cPv@ha
/* 800A60D8  38 63 F5 D4 */	addi r3, r3, daAlink_searchPortal__FP10fopAc_ac_cPv@l
/* 800A60DC  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 800A60E0  4B F7 37 19 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 800A60E4  7C 78 1B 79 */	or. r24, r3, r3
/* 800A60E8  41 82 00 F0 */	beq lbl_800A61D8
lbl_800A60EC:
/* 800A60EC  80 7F 29 00 */	lwz r3, 0x2900(r31)
/* 800A60F0  3C 03 00 01 */	addis r0, r3, 1
/* 800A60F4  28 00 FF FF */	cmplwi r0, 0xffff
/* 800A60F8  41 82 00 20 */	beq lbl_800A6118
/* 800A60FC  90 61 00 10 */	stw r3, 0x10(r1)
/* 800A6100  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 800A6104  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 800A6108  38 81 00 10 */	addi r4, r1, 0x10
/* 800A610C  4B F7 36 ED */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 800A6110  28 03 00 00 */	cmplwi r3, 0
/* 800A6114  41 82 00 C4 */	beq lbl_800A61D8
lbl_800A6118:
/* 800A6118  7F E3 FB 78 */	mr r3, r31
/* 800A611C  4B FF EB 25 */	bl checkCanoeStart__9daAlink_cFv
/* 800A6120  2C 03 00 00 */	cmpwi r3, 0
/* 800A6124  41 82 00 1C */	beq lbl_800A6140
/* 800A6128  3C 60 80 0F */	lis r3, daAlink_searchCanoe__FP10fopAc_ac_cPv@ha
/* 800A612C  38 63 3C D8 */	addi r3, r3, daAlink_searchCanoe__FP10fopAc_ac_cPv@l
/* 800A6130  38 80 00 00 */	li r4, 0
/* 800A6134  4B F7 36 C5 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 800A6138  28 03 00 00 */	cmplwi r3, 0
/* 800A613C  41 82 00 9C */	beq lbl_800A61D8
lbl_800A6140:
/* 800A6140  7F E3 FB 78 */	mr r3, r31
/* 800A6144  4B FF EA 85 */	bl checkBoarStart__9daAlink_cFv
/* 800A6148  2C 03 00 00 */	cmpwi r3, 0
/* 800A614C  41 82 00 1C */	beq lbl_800A6168
/* 800A6150  3C 60 80 0F */	lis r3, daAlink_searchBoar__FP10fopAc_ac_cPv@ha
/* 800A6154  38 63 C7 24 */	addi r3, r3, daAlink_searchBoar__FP10fopAc_ac_cPv@l
/* 800A6158  38 80 00 00 */	li r4, 0
/* 800A615C  4B F7 36 9D */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 800A6160  28 03 00 00 */	cmplwi r3, 0
/* 800A6164  41 82 00 74 */	beq lbl_800A61D8
lbl_800A6168:
/* 800A6168  2C 19 00 0D */	cmpwi r25, 0xd
/* 800A616C  40 82 00 20 */	bne lbl_800A618C
/* 800A6170  80 1F 19 9C */	lwz r0, 0x199c(r31)
/* 800A6174  54 00 05 29 */	rlwinm. r0, r0, 0, 0x14, 0x14
/* 800A6178  41 82 00 60 */	beq lbl_800A61D8
/* 800A617C  C0 3F 1B 3C */	lfs f1, 0x1b3c(r31)
/* 800A6180  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 800A6184  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800A6188  41 80 00 50 */	blt lbl_800A61D8
lbl_800A618C:
/* 800A618C  48 0B 95 0D */	bl checkCarryStartLightBallA__9daPy_py_cFv
/* 800A6190  28 03 00 00 */	cmplwi r3, 0
/* 800A6194  40 82 00 10 */	bne lbl_800A61A4
/* 800A6198  48 0B 95 99 */	bl checkCarryStartLightBallB__9daPy_py_cFv
/* 800A619C  28 03 00 00 */	cmplwi r3, 0
/* 800A61A0  41 82 00 1C */	beq lbl_800A61BC
lbl_800A61A4:
/* 800A61A4  3C 60 80 0E */	lis r3, daAlink_searchLightBall__FP10fopAc_ac_cPv@ha
/* 800A61A8  38 63 38 80 */	addi r3, r3, daAlink_searchLightBall__FP10fopAc_ac_cPv@l
/* 800A61AC  38 80 00 00 */	li r4, 0
/* 800A61B0  4B F7 36 49 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 800A61B4  28 03 00 00 */	cmplwi r3, 0
/* 800A61B8  41 82 00 20 */	beq lbl_800A61D8
lbl_800A61BC:
/* 800A61BC  2C 1D 00 00 */	cmpwi r29, 0
/* 800A61C0  41 82 00 20 */	beq lbl_800A61E0
/* 800A61C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800A61C8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800A61CC  80 03 5D B8 */	lwz r0, 0x5db8(r3)
/* 800A61D0  28 00 00 00 */	cmplwi r0, 0
/* 800A61D4  40 82 00 0C */	bne lbl_800A61E0
lbl_800A61D8:
/* 800A61D8  38 60 00 00 */	li r3, 0
/* 800A61DC  48 00 04 18 */	b lbl_800A65F4
lbl_800A61E0:
/* 800A61E0  28 18 00 00 */	cmplwi r24, 0
/* 800A61E4  41 82 00 10 */	beq lbl_800A61F4
/* 800A61E8  38 7B 3F 90 */	addi r3, r27, 0x3f90
/* 800A61EC  7F 04 C3 78 */	mr r4, r24
/* 800A61F0  4B F9 D5 05 */	bl setPtD__14dEvt_control_cFPv
lbl_800A61F4:
/* 800A61F4  38 00 00 00 */	li r0, 0
/* 800A61F8  90 0D 8A 4C */	stw r0, bgWaitFlg(r13)
/* 800A61FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800A6200  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800A6204  38 63 0D B4 */	addi r3, r3, 0xdb4
/* 800A6208  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 800A620C  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 800A6210  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 800A6214  54 06 06 BE */	clrlwi r6, r0, 0x1a
/* 800A6218  4B F8 ED 69 */	bl setRoom__13dSv_restart_cFRC4cXyzsSc
/* 800A621C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 800A6220  D0 1F 37 80 */	stfs f0, 0x3780(r31)
/* 800A6224  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 800A6228  D0 1F 37 84 */	stfs f0, 0x3784(r31)
/* 800A622C  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 800A6230  D0 1F 37 88 */	stfs f0, 0x3788(r31)
/* 800A6234  38 7F 19 70 */	addi r3, r31, 0x1970
/* 800A6238  4B FD 11 99 */	bl ClrGndThinCellingOff__9dBgS_AcchFv
/* 800A623C  7F 63 DB 78 */	mr r3, r27
/* 800A6240  38 9F 1A 60 */	addi r4, r31, 0x1a60
/* 800A6244  4B FC EE BD */	bl GetRoomId__4dBgSFRC13cBgS_PolyInfo
/* 800A6248  38 03 00 01 */	addi r0, r3, 1
/* 800A624C  98 1F 04 E2 */	stb r0, 0x4e2(r31)
/* 800A6250  7F E3 FB 78 */	mr r3, r31
/* 800A6254  48 00 03 D9 */	bl setRoomInfo__9daAlink_cFv
/* 800A6258  7F E3 FB 78 */	mr r3, r31
/* 800A625C  48 00 B2 59 */	bl setWaterY__9daAlink_cFv
/* 800A6260  3C 60 80 39 */	lis r3, d_a_d_a_alink__stringBase0@ha
/* 800A6264  38 63 20 94 */	addi r3, r3, d_a_d_a_alink__stringBase0@l
/* 800A6268  38 63 01 1C */	addi r3, r3, 0x11c
/* 800A626C  4B FF 77 F5 */	bl checkStageName__9daAlink_cFPCc
/* 800A6270  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800A6274  41 82 00 30 */	beq lbl_800A62A4
/* 800A6278  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 800A627C  7C 00 07 75 */	extsb. r0, r0
/* 800A6280  40 82 00 24 */	bne lbl_800A62A4
/* 800A6284  38 60 00 00 */	li r3, 0
/* 800A6288  4B F8 66 F5 */	bl getLayerNo__14dComIfG_play_cFi
/* 800A628C  2C 03 00 04 */	cmpwi r3, 4
/* 800A6290  40 82 00 14 */	bne lbl_800A62A4
/* 800A6294  80 1F 05 78 */	lwz r0, 0x578(r31)
/* 800A6298  64 00 00 80 */	oris r0, r0, 0x80
/* 800A629C  90 1F 05 78 */	stw r0, 0x578(r31)
/* 800A62A0  48 00 00 44 */	b lbl_800A62E4
lbl_800A62A4:
/* 800A62A4  3C 60 80 39 */	lis r3, d_a_d_a_alink__stringBase0@ha
/* 800A62A8  38 63 20 94 */	addi r3, r3, d_a_d_a_alink__stringBase0@l
/* 800A62AC  38 63 04 5D */	addi r3, r3, 0x45d
/* 800A62B0  4B FF 77 B1 */	bl checkStageName__9daAlink_cFPCc
/* 800A62B4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800A62B8  41 82 00 2C */	beq lbl_800A62E4
/* 800A62BC  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 800A62C0  2C 00 00 0D */	cmpwi r0, 0xd
/* 800A62C4  40 82 00 20 */	bne lbl_800A62E4
/* 800A62C8  38 60 00 00 */	li r3, 0
/* 800A62CC  4B F8 66 B1 */	bl getLayerNo__14dComIfG_play_cFi
/* 800A62D0  2C 03 00 00 */	cmpwi r3, 0
/* 800A62D4  40 82 00 10 */	bne lbl_800A62E4
/* 800A62D8  80 1F 05 78 */	lwz r0, 0x578(r31)
/* 800A62DC  64 00 01 00 */	oris r0, r0, 0x100
/* 800A62E0  90 1F 05 78 */	stw r0, 0x578(r31)
lbl_800A62E4:
/* 800A62E4  7F E3 FB 78 */	mr r3, r31
/* 800A62E8  38 80 00 19 */	li r4, 0x19
/* 800A62EC  38 A1 00 18 */	addi r5, r1, 0x18
/* 800A62F0  38 C1 00 14 */	addi r6, r1, 0x14
/* 800A62F4  38 E0 00 00 */	li r7, 0
/* 800A62F8  39 00 2C 00 */	li r8, 0x2c00
/* 800A62FC  48 00 63 15 */	bl getUnderUpperAnime__9daAlink_cFQ29daAlink_c11daAlink_ANMPP15J3DAnmTransformPP15J3DAnmTransformiUl
/* 800A6300  80 01 00 18 */	lwz r0, 0x18(r1)
/* 800A6304  90 1F 1F 2C */	stw r0, 0x1f2c(r31)
/* 800A6308  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800A630C  28 00 00 00 */	cmplwi r0, 0
/* 800A6310  41 82 00 0C */	beq lbl_800A631C
/* 800A6314  90 1F 1F 44 */	stw r0, 0x1f44(r31)
/* 800A6318  48 00 00 0C */	b lbl_800A6324
lbl_800A631C:
/* 800A631C  80 01 00 18 */	lwz r0, 0x18(r1)
/* 800A6320  90 1F 1F 44 */	stw r0, 0x1f44(r31)
lbl_800A6324:
/* 800A6324  7F E3 FB 78 */	mr r3, r31
/* 800A6328  4B FF F1 F5 */	bl setStartProcInit__9daAlink_cFv
/* 800A632C  7C 78 1B 78 */	mr r24, r3
/* 800A6330  7F E3 FB 78 */	mr r3, r31
/* 800A6334  38 80 00 00 */	li r4, 0
/* 800A6338  4B FF E5 D9 */	bl setSelectEquipItem__9daAlink_cFi
/* 800A633C  7F E3 FB 78 */	mr r3, r31
/* 800A6340  48 00 29 A5 */	bl setMatrix__9daAlink_cFv
/* 800A6344  7F E3 FB 78 */	mr r3, r31
/* 800A6348  48 00 6E 29 */	bl allAnimePlay__9daAlink_cFv
/* 800A634C  80 7F 06 50 */	lwz r3, 0x650(r31)
/* 800A6350  81 83 00 00 */	lwz r12, 0(r3)
/* 800A6354  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 800A6358  7D 89 03 A6 */	mtctr r12
/* 800A635C  4E 80 04 21 */	bctrl 
/* 800A6360  7F E3 FB 78 */	mr r3, r31
/* 800A6364  48 00 99 8D */	bl playFaceTextureAnime__9daAlink_cFv
/* 800A6368  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 800A636C  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800A6370  40 82 00 14 */	bne lbl_800A6384
/* 800A6374  7F E3 FB 78 */	mr r3, r31
/* 800A6378  38 80 00 00 */	li r4, 0
/* 800A637C  48 00 30 D5 */	bl setItemMatrix__9daAlink_cFi
/* 800A6380  48 00 00 0C */	b lbl_800A638C
lbl_800A6384:
/* 800A6384  7F E3 FB 78 */	mr r3, r31
/* 800A6388  48 00 3B C5 */	bl setWolfItemMatrix__9daAlink_cFv
lbl_800A638C:
/* 800A638C  7F E3 FB 78 */	mr r3, r31
/* 800A6390  48 00 1F 81 */	bl setBodyPartPos__9daAlink_cFv
/* 800A6394  7F E3 FB 78 */	mr r3, r31
/* 800A6398  48 00 B1 B5 */	bl setHangWaterY__9daAlink_cFv
/* 800A639C  38 7F 09 74 */	addi r3, r31, 0x974
/* 800A63A0  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 800A63A4  48 1C 8E 39 */	bl SetC__8cM3dGCylFRC4cXyz
/* 800A63A8  C0 1F 38 38 */	lfs f0, 0x3838(r31)
/* 800A63AC  D0 1F 34 54 */	stfs f0, 0x3454(r31)
/* 800A63B0  7F E3 FB 78 */	mr r3, r31
/* 800A63B4  48 00 24 45 */	bl setAttentionPos__9daAlink_cFv
/* 800A63B8  7F E3 FB 78 */	mr r3, r31
/* 800A63BC  48 01 96 35 */	bl setItemActor__9daAlink_cFv
/* 800A63C0  80 1C 0D D0 */	lwz r0, 0xdd0(r28)
/* 800A63C4  54 00 02 53 */	rlwinm. r0, r0, 0, 9, 9
/* 800A63C8  41 82 00 38 */	beq lbl_800A6400
/* 800A63CC  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 800A63D0  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800A63D4  40 82 00 2C */	bne lbl_800A6400
/* 800A63D8  48 01 A2 05 */	bl checkNotHeavyBootsStage__9daAlink_cFv
/* 800A63DC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800A63E0  40 82 00 20 */	bne lbl_800A6400
/* 800A63E4  2C 1D 00 00 */	cmpwi r29, 0
/* 800A63E8  40 82 00 18 */	bne lbl_800A6400
/* 800A63EC  2C 1A 00 00 */	cmpwi r26, 0
/* 800A63F0  40 82 00 10 */	bne lbl_800A6400
/* 800A63F4  7F E3 FB 78 */	mr r3, r31
/* 800A63F8  38 80 00 01 */	li r4, 1
/* 800A63FC  48 03 C1 85 */	bl setHeavyBoots__9daAlink_cFi
lbl_800A6400:
/* 800A6400  80 1C 0D D0 */	lwz r0, 0xdd0(r28)
/* 800A6404  54 00 02 95 */	rlwinm. r0, r0, 0, 0xa, 0xa
/* 800A6408  41 82 00 28 */	beq lbl_800A6430
/* 800A640C  48 01 9F 95 */	bl checkCloudSea__9daAlink_cFv
/* 800A6410  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800A6414  40 82 00 1C */	bne lbl_800A6430
/* 800A6418  80 1F 05 78 */	lwz r0, 0x578(r31)
/* 800A641C  60 00 00 01 */	ori r0, r0, 1
/* 800A6420  90 1F 05 78 */	stw r0, 0x578(r31)
/* 800A6424  38 7F 2C A8 */	addi r3, r31, 0x2ca8
/* 800A6428  38 80 00 02 */	li r4, 2
/* 800A642C  48 21 D3 4D */	bl setKanteraState__14Z2CreatureLinkFUc
lbl_800A6430:
/* 800A6430  48 0B 92 69 */	bl checkCarryStartLightBallA__9daPy_py_cFv
/* 800A6434  28 03 00 00 */	cmplwi r3, 0
/* 800A6438  40 82 00 10 */	bne lbl_800A6448
/* 800A643C  48 0B 92 F5 */	bl checkCarryStartLightBallB__9daPy_py_cFv
/* 800A6440  28 03 00 00 */	cmplwi r3, 0
/* 800A6444  41 82 00 34 */	beq lbl_800A6478
lbl_800A6448:
/* 800A6448  3C 60 80 0E */	lis r3, daAlink_searchLightBall__FP10fopAc_ac_cPv@ha
/* 800A644C  38 63 38 80 */	addi r3, r3, daAlink_searchLightBall__FP10fopAc_ac_cPv@l
/* 800A6450  38 80 00 00 */	li r4, 0
/* 800A6454  4B F7 33 A5 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 800A6458  7C 64 1B 78 */	mr r4, r3
/* 800A645C  7F E3 FB 78 */	mr r3, r31
/* 800A6460  38 A0 00 01 */	li r5, 1
/* 800A6464  38 C0 00 01 */	li r6, 1
/* 800A6468  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800A646C  81 8C 01 04 */	lwz r12, 0x104(r12)
/* 800A6470  7D 89 03 A6 */	mtctr r12
/* 800A6474  4E 80 04 21 */	bctrl 
lbl_800A6478:
/* 800A6478  38 60 00 FF */	li r3, 0xff
/* 800A647C  7F 04 C3 78 */	mr r4, r24
/* 800A6480  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 800A6484  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 800A6488  7C 06 07 74 */	extsb r6, r0
/* 800A648C  38 FF 04 E4 */	addi r7, r31, 0x4e4
/* 800A6490  39 00 00 00 */	li r8, 0
/* 800A6494  39 20 FF FF */	li r9, -1
/* 800A6498  4B F7 39 01 */	bl fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
/* 800A649C  7F E3 FB 78 */	mr r3, r31
/* 800A64A0  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 800A64A4  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 800A64A8  7C 05 07 74 */	extsb r5, r0
/* 800A64AC  38 C0 00 01 */	li r6, 1
/* 800A64B0  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800A64B4  81 8C 01 64 */	lwz r12, 0x164(r12)
/* 800A64B8  7D 89 03 A6 */	mtctr r12
/* 800A64BC  4E 80 04 21 */	bctrl 
/* 800A64C0  7F C0 07 34 */	extsh r0, r30
/* 800A64C4  2C 00 FF FC */	cmpwi r0, -4
/* 800A64C8  40 82 00 88 */	bne lbl_800A6550
/* 800A64CC  4B F8 95 F5 */	bl dComIfGp_TargetWarpPt_get__Fv
/* 800A64D0  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 800A64D4  28 00 00 FF */	cmplwi r0, 0xff
/* 800A64D8  41 82 00 78 */	beq lbl_800A6550
/* 800A64DC  4B F8 96 0D */	bl dComIfGp_TransportWarp_check__Fv
/* 800A64E0  2C 03 00 00 */	cmpwi r3, 0
/* 800A64E4  40 82 00 6C */	bne lbl_800A6550
/* 800A64E8  28 1F 00 00 */	cmplwi r31, 0
/* 800A64EC  41 82 00 0C */	beq lbl_800A64F8
/* 800A64F0  83 1F 00 04 */	lwz r24, 4(r31)
/* 800A64F4  48 00 00 08 */	b lbl_800A64FC
lbl_800A64F8:
/* 800A64F8  3B 00 FF FF */	li r24, -1
lbl_800A64FC:
/* 800A64FC  38 61 00 1C */	addi r3, r1, 0x1c
/* 800A6500  38 80 FF FF */	li r4, -1
/* 800A6504  38 A0 FF FF */	li r5, -1
/* 800A6508  38 C0 0B BE */	li r6, 0xbbe
/* 800A650C  48 1C 0E E9 */	bl __ct__5csXyzFsss
/* 800A6510  38 00 00 00 */	li r0, 0
/* 800A6514  90 01 00 08 */	stw r0, 8(r1)
/* 800A6518  38 60 02 C1 */	li r3, 0x2c1
/* 800A651C  7F 04 C3 78 */	mr r4, r24
/* 800A6520  3C A0 80 10 */	lis r5, 0x8010 /* 0x800FFFFF@ha */
/* 800A6524  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x800FFFFF@l */
/* 800A6528  3C C0 80 40 */	lis r6, g_dComIfG_gameInfo@ha
/* 800A652C  38 C6 61 C0 */	addi r6, r6, g_dComIfG_gameInfo@l
/* 800A6530  80 C6 5D B4 */	lwz r6, 0x5db4(r6)
/* 800A6534  38 C6 04 D0 */	addi r6, r6, 0x4d0
/* 800A6538  88 ED 87 E4 */	lbz r7, struct_80450D64+0x0(r13)
/* 800A653C  7C E7 07 74 */	extsb r7, r7
/* 800A6540  39 01 00 1C */	addi r8, r1, 0x1c
/* 800A6544  39 20 00 00 */	li r9, 0
/* 800A6548  39 40 FF FF */	li r10, -1
/* 800A654C  4B F7 39 A5 */	bl fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
lbl_800A6550:
/* 800A6550  38 7B 3E E8 */	addi r3, r27, 0x3ee8
/* 800A6554  81 9B 3E E8 */	lwz r12, 0x3ee8(r27)
/* 800A6558  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 800A655C  7D 89 03 A6 */	mtctr r12
/* 800A6560  4E 80 04 21 */	bctrl 
/* 800A6564  88 03 00 09 */	lbz r0, 9(r3)
/* 800A6568  54 00 FE FE */	rlwinm r0, r0, 0x1f, 0x1b, 0x1f
/* 800A656C  2C 00 00 11 */	cmpwi r0, 0x11
/* 800A6570  40 82 00 80 */	bne lbl_800A65F0
/* 800A6574  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800A6578  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800A657C  3B 03 00 CC */	addi r24, r3, 0xcc
/* 800A6580  7F 03 C3 78 */	mr r3, r24
/* 800A6584  38 80 00 2C */	li r4, 0x2c
/* 800A6588  4B F8 D9 41 */	bl isFirstBit__21dSv_player_get_item_cCFUc
/* 800A658C  2C 03 00 00 */	cmpwi r3, 0
/* 800A6590  40 82 00 48 */	bne lbl_800A65D8
/* 800A6594  7F 03 C3 78 */	mr r3, r24
/* 800A6598  38 80 00 2B */	li r4, 0x2b
/* 800A659C  4B F8 D9 2D */	bl isFirstBit__21dSv_player_get_item_cCFUc
/* 800A65A0  2C 03 00 00 */	cmpwi r3, 0
/* 800A65A4  40 82 00 34 */	bne lbl_800A65D8
/* 800A65A8  7F 03 C3 78 */	mr r3, r24
/* 800A65AC  38 80 00 2A */	li r4, 0x2a
/* 800A65B0  4B F8 D9 19 */	bl isFirstBit__21dSv_player_get_item_cCFUc
/* 800A65B4  2C 03 00 00 */	cmpwi r3, 0
/* 800A65B8  40 82 00 20 */	bne lbl_800A65D8
/* 800A65BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800A65C0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800A65C4  38 80 00 6F */	li r4, 0x6f
/* 800A65C8  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 800A65CC  7C 05 07 74 */	extsb r5, r0
/* 800A65D0  4B F8 EC 31 */	bl onSwitch__10dSv_info_cFii
/* 800A65D4  48 00 00 1C */	b lbl_800A65F0
lbl_800A65D8:
/* 800A65D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800A65DC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800A65E0  38 80 00 6F */	li r4, 0x6f
/* 800A65E4  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 800A65E8  7C 05 07 74 */	extsb r5, r0
/* 800A65EC  4B F8 EC C5 */	bl offSwitch__10dSv_info_cFii
lbl_800A65F0:
/* 800A65F0  38 60 00 04 */	li r3, 4
lbl_800A65F4:
/* 800A65F4  39 61 00 50 */	addi r11, r1, 0x50
/* 800A65F8  48 2B BC 1D */	bl _restgpr_24
/* 800A65FC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 800A6600  7C 08 03 A6 */	mtlr r0
/* 800A6604  38 21 00 50 */	addi r1, r1, 0x50
/* 800A6608  4E 80 00 20 */	blr 
